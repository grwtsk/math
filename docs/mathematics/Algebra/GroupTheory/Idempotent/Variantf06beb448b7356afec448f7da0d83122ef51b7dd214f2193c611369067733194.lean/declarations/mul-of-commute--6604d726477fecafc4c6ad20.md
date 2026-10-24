# mul_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8197a46d-3a13-3857-c377-b3b1fcddca17",
  "kind": "lemma",
  "lexical_name": "mul_of_commute",
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
  "slug": "mul-of-commute--6604d726477fecafc4c6ad20",
  "source": {
    "blob": "7b39d1c0e7e0f6643aa18dd6446d1d9a3a38ab87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6604d726477fecafc4c6ad2048ce1b2e219076162f6f17b5d63bb254e767fd80",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8197a46d-3a13-3857-c377-b3b1fcddca17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_of_commute (hab : Commute a b) (ha : IsIdempotentElem a) (hb : IsIdempotentElem b) :
    IsIdempotentElem (a * b) := by rw [IsIdempotentElem, hab.symm.mul_mul_mul_comm, ha.eq, hb.eq]

end Semigroup

section CommSemigroup
variable [CommSemigroup S] {a b : S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b39d1c0e7e0f6643aa18dd6446d1d9a3a38ab87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
