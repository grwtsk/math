# uniqueGalOfSplits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85ec86203fd08ddf52a2f69c86b90cf9f28f5fb78f1915653f375a5bd1e7a462",
  "kind": "def",
  "lexical_name": "uniqueGalOfSplits",
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
  "slug": "uniquegalofsplits--2022b9ebfbd5c8c1b0116fc5",
  "source": {
    "blob": "094a30064014772afc689d7314ea56a90716de29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2022b9ebfbd5c8c1b0116fc5bc7dcd9297daaf69a4cb575c78fcec2baac53f1f",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85ec86203fd08ddf52a2f69c86b90cf9f28f5fb78f1915653f375a5bd1e7a462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniqueGalOfSplits (h : p.Splits) : Unique p.Gal where
  default := 1
  uniq f :=
    AlgEquiv.ext fun x => by
      obtain ⟨y, rfl⟩ :=
        Algebra.mem_bot.mp
          ((SetLike.ext_iff.mp ((IsSplittingField.splits_iff _ p).mp h) x).mp Algebra.mem_top)
      rw [AlgEquiv.commutes, AlgEquiv.commutes]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantf23ac7e91d2374d28f4875a90e5c8f124b0331806f72dad054c6dc15006875a2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094a30064014772afc689d7314ea56a90716de29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
