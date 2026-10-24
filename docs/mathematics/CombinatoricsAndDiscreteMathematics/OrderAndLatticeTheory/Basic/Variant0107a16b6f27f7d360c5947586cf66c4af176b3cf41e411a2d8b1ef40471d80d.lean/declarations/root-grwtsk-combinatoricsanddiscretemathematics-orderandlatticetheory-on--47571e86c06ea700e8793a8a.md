# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OneAddNatPred.Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.OrderIso.pnatIsoNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdd3cdbf42ef948304c2584ac7ab7aa3cd2ec13d00baea80aeefa5e1891c87a1",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OneAddNatPred.Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.OrderIso.pnatIsoNat",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-on--47571e86c06ea700e8793a8a",
  "source": {
    "blob": "afe2ccb09312fc6ed316b235a823225156ab15c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47571e86c06ea700e8793a8a709aa1d7e4a38a48ff844970e23dd8c7c155f452",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdd3cdbf42ef948304c2584ac7ab7aa3cd2ec13d00baea80aeefa5e1891c87a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OneAddNatPred.Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.OrderIso.pnatIsoNat : ℕ+ ≃o ℕ where
  toEquiv := Equiv.pnatEquivNat
  map_rel_iff' := natPred_le_natPred

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe2ccb09312fc6ed316b235a823225156ab15c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
