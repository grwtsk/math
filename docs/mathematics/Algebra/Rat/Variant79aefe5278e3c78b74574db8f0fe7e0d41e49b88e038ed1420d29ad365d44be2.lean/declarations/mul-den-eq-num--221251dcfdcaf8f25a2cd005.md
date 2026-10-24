# mul_den_eq_num

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9f074b6-0fbd-8dcd-4bf9-78c93d2dee32",
  "kind": "lemma",
  "lexical_name": "mul_den_eq_num",
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
  "slug": "mul-den-eq-num--221251dcfdcaf8f25a2cd005",
  "source": {
    "blob": "dc81cfca212e30f3bbeef77d0fbf129a7dffb244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221251dcfdcaf8f25a2cd005163f40134aa970d46e862a89e3397da2307032ff",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f074b6-0fbd-8dcd-4bf9-78c93d2dee32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma mul_den_eq_num (q : ℚ) : q * q.den = q.num := by
  suffices (q.num /. ↑q.den) * (↑q.den /. 1) = q.num /. 1 by
    conv => pattern (occs := 1) q; (rw [← num_divInt_den q])
    simp only [intCast_eq_divInt, natCast_eq_divInt, num_divInt_den] at this ⊢; assumption
  have : (q.den : ℤ) ≠ 0 := mod_cast q.den_ne_zero
  rw [divInt_mul_divInt _ _ this Int.one_ne_zero, mul_comm (q.den : ℤ) 1, divInt_mul_right this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc81cfca212e30f3bbeef77d0fbf129a7dffb244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
