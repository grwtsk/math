# Sublocale.instCoframe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8f769dbe14da91fa0ce440e8921d7d449155ae354c0570646727b1db43ac45c",
  "kind": "instance",
  "lexical_name": "Sublocale.instCoframe",
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
  "slug": "sublocale-instcoframe--5cdca451baae03faba7e2afe",
  "source": {
    "blob": "689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cdca451baae03faba7e2afe28edbb4b5bbf3ab1dd7e5e1d7c8cd36b3f53db56",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8f769dbe14da91fa0ce440e8921d7d449155ae354c0570646727b1db43ac45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Sublocale.instCoframe : Order.Coframe (Sublocale X) := .ofMinimalAxioms {
  iInf_sup_le_sup_sInf a s := by simp [← toNucleus_le_toNucleus,
    nucleusIsoSublocale.symm_eq_toNucleus, nucleusIsoSublocale.symm.map_sup,
    nucleusIsoSublocale.symm.map_sInf, sup_iInf_eq, nucleusIsoSublocale.symm.map_iInf] }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
