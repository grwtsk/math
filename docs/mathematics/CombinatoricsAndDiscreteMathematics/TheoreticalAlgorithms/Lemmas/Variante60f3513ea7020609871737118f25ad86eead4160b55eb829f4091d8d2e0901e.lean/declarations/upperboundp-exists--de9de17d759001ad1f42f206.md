# upperBoundP?_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed0aadd-15f6-4086-b0da-15764a215da8",
  "kind": "theorem",
  "lexical_name": "upperBoundP?_exists",
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
  "slug": "upperboundp-exists--de9de17d759001ad1f42f206",
  "source": {
    "blob": "3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1041,
    "line": 1035,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de9de17d759001ad1f42f206ae6f0d1897d5b2fab6845c8487d45e8580830a2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed0aadd-15f6-4086-b0da-15764a215da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1035–1041.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperBoundP?_exists {t : RBSet α cmp} [TransCmp cmp] [IsCut cmp cut] :
    (∃ x, t.upperBoundP? cut = some x) ↔ ∃ x ∈ t, cut x ≠ .gt := by
  simp [upperBoundP?, t.2.out.1.upperBound?_exists, mem_toList, mem_iff_mem_toList]
  exact ⟨
    fun ⟨x, h1, h2⟩ => ⟨x, ⟨x, h1, OrientedCmp.cmp_refl⟩, h2⟩,
    fun ⟨x, ⟨y, h1, h2⟩, eq⟩ => ⟨y, h1, IsCut.congr (cut := cut) h2 ▸ eq⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean#L1035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
