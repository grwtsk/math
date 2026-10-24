# inf'_product_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3e09ed0-ea79-fa19-cbee-eefffe0e769a",
  "kind": "theorem",
  "lexical_name": "inf'_product_left",
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
  "slug": "inf-product-left--e0f3c1ba0b43ea0753da9d18",
  "source": {
    "blob": "7b8da181edc493ed8d8298ec69c8cffefa05f228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f3c1ba0b43ea0753da9d182a8b4a6d9fd3582c2feffd6cd3ce1d01aac92bd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3e09ed0-ea79-fa19-cbee-eefffe0e769a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf'_product_left {t : Finset γ} (h : (s ×ˢ t).Nonempty) (f : β × γ → α) :
    (s ×ˢ t).inf' h f = s.inf' h.fst fun i => t.inf' h.snd fun i' => f ⟨i, i'⟩ :=
  sup'_product_left (α := αᵒᵈ) h f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8da181edc493ed8d8298ec69c8cffefa05f228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
