# isPretransitive_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:127970f3-3cf2-fb9b-6b5c-d78fc8d149ab",
  "kind": "theorem",
  "lexical_name": "isPretransitive_of_isGalois",
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
  "slug": "ispretransitive-of-isgalois--31e07882c1fbb4adaef90230",
  "source": {
    "blob": "5166c21a4483803cbbc9ef563dd19952c2143832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 136,
    "path": "GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e07882c1fbb4adaef902302e347b6ea4c2bf8e2d20e1f303ed12aba1d6d939",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127970f3-3cf2-fb9b-6b5c-d78fc8d149ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPretransitive_of_isGalois [IsGalois K L] :
    MulAction.IsPretransitive (B ≃ₐ[A] B) (primesOver p B) where
  exists_smul_eq := by
    intro ⟨P, _, _⟩ ⟨Q, _, _⟩
    rcases exists_map_eq_of_isGalois p P Q K L with ⟨σ, hs⟩
    exact ⟨σ, Subtype.val_inj.mp hs⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5166c21a4483803cbbc9ef563dd19952c2143832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
