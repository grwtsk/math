# extensionOfMaxAdjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4b6de61b84c474693ced9944bd8191e94630176e40312bba21fd5719a12aa6",
  "kind": "def",
  "lexical_name": "extensionOfMaxAdjoin",
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
  "slug": "extensionofmaxadjoin--f14a49dd19c2100c1703ef5f",
  "source": {
    "blob": "0fd2344c5d6119685a18f6afe9bd123a1d231599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 345,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14a49dd19c2100c1703ef5f1bad4341bce419e13b60b9733e977d2c9613d7f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4b6de61b84c474693ced9944bd8191e94630176e40312bba21fd5719a12aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extensionOfMaxAdjoin (h : Module.Baer R Q) (y : N) : ExtensionOf i f where
  domain := supExtensionOfMaxSingleton i f y -- (extensionOfMax i f).domain ⊔ Submodule.span R {y}
  le := le_trans (extensionOfMax i f).le le_sup_left
  toFun :=
    { toFun := ExtensionOfMaxAdjoin.extensionToFun i f h
      map_add' := fun a b => by
        have eq1 :
          ↑a + ↑b =
            ↑(ExtensionOfMaxAdjoin.fst i a + ExtensionOfMaxAdjoin.fst i b) +
              (ExtensionOfMaxAdjoin.snd i a + ExtensionOfMaxAdjoin.snd i b) • y := by
          rw [ExtensionOfMaxAdjoin.eqn, ExtensionOfMaxAdjoin.eqn, add_smul, Submodule.coe_add]
          ac_rfl
        rw [ExtensionOfMaxAdjoin.extensionToFun_wd (y := y) i f h (a + b) _ _ eq1,
          LinearPMap.map_add, map_add]
        unfold ExtensionOfMaxAdjoin.extensionToFun
        abel
      map_smul' := fun r a => by
        dsimp
        have eq1 :
          r • (a : N) =
            ↑(r • ExtensionOfMaxAdjoin.fst i a) + (r • ExtensionOfMaxAdjoin.snd i a) • y := by
          rw [ExtensionOfMaxAdjoin.eqn, smul_add, smul_eq_mul, mul_smul]
          rfl
        rw [ExtensionOfMaxAdjoin.extensionToFun_wd i f h (r • a :) _ _ eq1, map_smul,
          LinearPMap.map_smul, ← smul_add]
        congr }
  is_extension m := by
    dsimp
    rw [(extensionOfMax i f).is_extension,
      ExtensionOfMaxAdjoin.extensionToFun_wd i f h _ ⟨i m, _⟩ 0 _, map_zero, add_zero]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd2344c5d6119685a18f6afe9bd123a1d231599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
