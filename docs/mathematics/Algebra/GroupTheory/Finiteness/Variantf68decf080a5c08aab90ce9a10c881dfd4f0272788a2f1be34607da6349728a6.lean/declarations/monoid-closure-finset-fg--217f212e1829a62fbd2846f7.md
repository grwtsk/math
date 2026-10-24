# Monoid.closure_finset_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c24bec732473df1115a6ffffd446bdad70f2ebf19eab5488017cbc95ad717fd",
  "kind": "instance",
  "lexical_name": "Monoid.closure_finset_fg",
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
  "slug": "monoid-closure-finset-fg--217f212e1829a62fbd2846f7",
  "source": {
    "blob": "68060eb29f204c69ac67aa416750394a45f893a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:217f212e1829a62fbd2846f706d2ece2224a3a464165dbfbdc30759dcfebf6c3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c24bec732473df1115a6ffffd446bdad70f2ebf19eab5488017cbc95ad717fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Monoid.closure_finset_fg (s : Finset M) : Monoid.FG (Submonoid.closure (s : Set M)) := by
  refine ⟨⟨s.preimage Subtype.val Subtype.coe_injective.injOn, ?_⟩⟩
  rw [Finset.coe_preimage, Submonoid.closure_closure_coe_preimage]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68060eb29f204c69ac67aa416750394a45f893a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
