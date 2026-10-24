# exists_algebraMap_eq_of_pow_mem_subalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beae292f-0942-c51b-9074-a89e818a02d3",
  "kind": "theorem",
  "lexical_name": "exists_algebraMap_eq_of_pow_mem_subalgebra",
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
  "slug": "exists-algebramap-eq-of-pow-mem-subalgebra--f29e06f031efe5a69e1f939b",
  "source": {
    "blob": "a4d9b5989c1e550d10add75e808b606bd2a8d5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29e06f031efe5a69e1f939b8485dd6cda9e8f0a409638caf626ab6ca305eb3d",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beae292f-0942-c51b-9074-a89e818a02d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_algebraMap_eq_of_pow_mem_subalgebra {K : Type*} [Field K] [Algebra R K]
    {S : Subalgebra R K} [IsIntegrallyClosed S] [IsFractionRing S K] {x : K} {n : ℕ} (hn : 0 < n)
    (hx : x ^ n ∈ S) : ∃ y : S, algebraMap S K y = x :=
  exists_algebraMap_eq_of_isIntegral_pow hn <| isIntegral_iff.mpr ⟨⟨x ^ n, hx⟩, rfl⟩
#align is_integrally_closed.exists_algebra_map_eq_of_pow_mem_subalgebra IsIntegrallyClosed.exists_algebraMap_eq_of_pow_mem_subalgebra

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d9b5989c1e550d10add75e808b606bd2a8d5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
