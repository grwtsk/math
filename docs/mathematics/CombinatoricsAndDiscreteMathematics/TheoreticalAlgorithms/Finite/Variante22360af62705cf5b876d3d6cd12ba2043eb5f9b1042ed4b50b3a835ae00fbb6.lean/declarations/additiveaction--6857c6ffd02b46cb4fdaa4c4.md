# AdditiveAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b85be9f0dc4049653c025e5066c503689a0ab935ee378310d869a1269e89ef3",
  "kind": "structure",
  "lexical_name": "AdditiveAction",
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
  "slug": "additiveaction--6857c6ffd02b46cb4fdaa4c4",
  "source": {
    "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6857c6ffd02b46cb4fdaa4c402aeefe37a4919bf23e53df1e1b6a45d2296fe17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b85be9f0dc4049653c025e5066c503689a0ab935ee378310d869a1269e89ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdditiveAction
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v}) where
  act : G.Carrier → A.Carrier → A.Carrier
  act_one :
    ∀ a : A.Carrier, act G.one a = a
  act_mul :
    ∀ (g h : G.Carrier) (a : A.Carrier),
      act (G.mul g h) a = act g (act h a)
  act_zero :
    ∀ g : G.Carrier, act g A.zero = A.zero
  act_add :
    ∀ (g : G.Carrier) (a b : A.Carrier),
      act g (A.add a b) = A.add (act g a) (act g b)
  act_neg :
    ∀ (g : G.Carrier) (a : A.Carrier),
      act g (A.neg a) = A.neg (act g a)
  coboundary_zero :
    ∀ g : G.Carrier,
      A.sub (act g A.zero) A.zero = A.zero
  coboundary_add :
    ∀ (g : G.Carrier) (a b : A.Carrier),
      A.sub (act g (A.add a b)) (A.add a b) =
        A.add (A.sub (act g a) a) (A.sub (act g b) b)
  coboundary_neg :
    ∀ (g : G.Carrier) (a : A.Carrier),
      A.sub (act g (A.neg a)) (A.neg a) =
        A.neg (A.sub (act g a) a)
  coboundary_cocycle :
    ∀ (a : A.Carrier) (g h : G.Carrier),
      A.sub (act (G.mul g h) a) a =
        A.add (A.sub (act g a) a)
          (act g (A.sub (act h a) a))

/-- A homomorphism compatible with the selected actions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c8dbd8fabdb707f29845223cd3233e681f82e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
