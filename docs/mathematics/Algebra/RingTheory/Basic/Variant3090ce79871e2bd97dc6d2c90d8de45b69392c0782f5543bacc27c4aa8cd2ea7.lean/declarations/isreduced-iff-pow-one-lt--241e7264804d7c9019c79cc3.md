# isReduced_iff_pow_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f94b6c-cd6f-ca92-e883-93a06ab51ec3",
  "kind": "theorem",
  "lexical_name": "isReduced_iff_pow_one_lt",
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
  "slug": "isreduced-iff-pow-one-lt--241e7264804d7c9019c79cc3",
  "source": {
    "blob": "488fc0f6a3d7d28c079a8a167aeffb3132f9fc05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 135,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:241e7264804d7c9019c79cc3b9d6271351e9baa50712468a67f57f304ed9c80c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f94b6c-cd6f-ca92-e883-93a06ab51ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isReduced_iff_pow_one_lt [MonoidWithZero R] (k : ℕ) (hk : 1 < k) :
    IsReduced R ↔ ∀ x : R, x ^ k = 0 → x = 0 := by
  simp_rw [← zero_isRadical_iff, isRadical_iff_pow_one_lt k hk, zero_dvd_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488fc0f6a3d7d28c079a8a167aeffb3132f9fc05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
