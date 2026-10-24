# iSupIndep.map_orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8222479a-92f6-8907-942c-95d0648c24ff",
  "kind": "theorem",
  "lexical_name": "iSupIndep.map_orderIso",
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
  "slug": "isupindep-map-orderiso--34579f76c5019cddbd6e5e5e",
  "source": {
    "blob": "5783d65b925286f826426ed2911ad4b7f9c3d6ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34579f76c5019cddbd6e5e5e716aea618cfa85713181dfc69fd34eb903c7a40f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8222479a-92f6-8907-942c-95d0648c24ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep.map_orderIso {ι : Sort*} {α β : Type*} [CompleteLattice α]
    [CompleteLattice β] (f : α ≃o β) {a : ι → α} (ha : iSupIndep a) : iSupIndep (f ∘ a) :=
  fun i => ((ha i).map_orderIso f).mono_right (f.monotone.le_map_iSup₂ _)

@[deprecated (since := "2024-11-24")]
alias CompleteLattice.Independent.map_orderIso := iSupIndep.map_orderIso

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5783d65b925286f826426ed2911ad4b7f9c3d6ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
