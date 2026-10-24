# mulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cad1dbfb16e50b757e83f59e861f1369ab29397fb3cc0aafcbf9fcd0eb9abdb6",
  "kind": "def",
  "lexical_name": "mulAction",
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
  "slug": "mulaction--8b11b5676f09ce08f0d707dc",
  "source": {
    "blob": "d735876c87a392ebfcabed10dec71053a16ad1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1765,
    "line": 1754,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b11b5676f09ce08f0d707dc9a0fe3d4537358ad4991b910e7c4b318f2ef6a8e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cad1dbfb16e50b757e83f59e861f1369ab29397fb3cc0aafcbf9fcd0eb9abdb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1754–1765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mulAction [DecidableEq α] [Monoid α] [MulAction α β] : MulAction (Finset α) (Finset β)
    where
  mul_smul _ _ _ := image₂_assoc mul_smul
  one_smul s := image₂_singleton_left.trans <| by simp_rw [one_smul, image_id']
#align finset.mul_action Finset.mulAction
#align finset.add_action Finset.addAction

/-- A multiplicative action of a monoid on a type `β` gives a multiplicative action on `Finset β`.
-/
@[to_additive
      "An additive action of an additive monoid on a type `β` gives an additive action
      on `Finset β`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean#L1754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d735876c87a392ebfcabed10dec71053a16ad1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
