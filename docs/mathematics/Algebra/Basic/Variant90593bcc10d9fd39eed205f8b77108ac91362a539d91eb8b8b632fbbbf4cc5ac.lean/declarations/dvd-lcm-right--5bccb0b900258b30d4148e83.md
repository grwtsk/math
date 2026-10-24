# dvd_lcm_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26c0e85d-bb04-f240-3131-11af92959a79",
  "kind": "theorem",
  "lexical_name": "dvd_lcm_right",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "dvd-lcm-right--5bccb0b900258b30d4148e83",
  "source": {
    "blob": "3564649e4054ad4611df984217ad72b18a3de570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 239,
    "path": "GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bccb0b900258b30d4148e836d8f2cd2719eab963f97462354bd75097060925c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26c0e85d-bb04-f240-3131-11af92959a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_lcm_right (x y : R) : y ∣ lcm x y :=
  by_cases
    (fun hxy : gcd x y = 0 => by
      rw [lcm, hxy, div_zero]
      exact dvd_zero _)
    fun hxy =>
    let ⟨z, hz⟩ := (gcd_dvd x y).1
    ⟨z, Eq.symm <| eq_div_of_mul_eq_right hxy <| by rw [← mul_assoc, mul_right_comm, ← hz]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3564649e4054ad4611df984217ad72b18a3de570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
