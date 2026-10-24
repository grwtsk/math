# evalNot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2276194eb4513f2fb7ef0c4c5e8ca30fe4639d0d692ec477d75b7749e12ac0e",
  "kind": "def",
  "lexical_name": "evalNot",
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
  "slug": "evalnot--0cf660b9c4baa839b94b5ac2",
  "source": {
    "blob": "f103d0cb89b551f3eeb03e5c2fe48e91e1f2bd62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 766,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cf660b9c4baa839b94b5ac2c4b2ce0fceca7e7d98b357abf0893cab147eb52b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2276194eb4513f2fb7ef0c4c5e8ca30fe4639d0d692ec477d75b7749e12ac0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num ¬_] def evalNot : NormNumExt where eval {u α} e := do
  let .app (.const ``Not _) (a : Q(Prop)) ← whnfR e | failure
  guard <|← withNewMCtxDepth <| isDefEq α q(Prop)
  let .isBool b p ← derive q($a) | failure
  haveI' : u =QL 0 := ⟨⟩; haveI' : $α =Q Prop := ⟨⟩
  haveI' : $e =Q ¬ $a := ⟨⟩
  if b then
    have p : Q($a) := p
    return .isFalse q(not_not_intro $p)
  else
    have p : Q(¬ $a) := p
    return .isTrue q($p)

/-! # (In)equalities -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f103d0cb89b551f3eeb03e5c2fe48e91e1f2bd62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
