# Algebra.IsIntegral.tensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aad52b0c5354febd05a9cbc8848e2bd062b2cb695ecf69f147492333949a3a15",
  "kind": "instance",
  "lexical_name": "Algebra.IsIntegral.tensorProduct",
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
  "slug": "algebra-isintegral-tensorproduct--eceeb7d280542ed22853a2df",
  "source": {
    "blob": "c02c7b1b1cec54321d90f3174ba843ff542be3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 252,
    "path": "GRWTSK/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eceeb7d280542ed22853a2df310ee7e011618d080bd8807bfade47906a4ae499",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aad52b0c5354febd05a9cbc8848e2bd062b2cb695ecf69f147492333949a3a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra.IsIntegral.tensorProduct [CommRing B]
    [Algebra R A] [Algebra R B] [int : Algebra.IsIntegral R B] :
    Algebra.IsIntegral A (A ⊗[R] B) where
  isIntegral p := p.inductionOn (fun _ s ↦ .tmul _ <| int.1 s) (fun _ _ ↦ .add)

end TensorProduct

section MulSemiringAction

variable {G R K : Type*} [CommRing R] [CommRing K] [Algebra R K]
  [Group G] [MulSemiringAction G K] [SMulCommClass G R K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02c7b1b1cec54321d90f3174ba843ff542be3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
