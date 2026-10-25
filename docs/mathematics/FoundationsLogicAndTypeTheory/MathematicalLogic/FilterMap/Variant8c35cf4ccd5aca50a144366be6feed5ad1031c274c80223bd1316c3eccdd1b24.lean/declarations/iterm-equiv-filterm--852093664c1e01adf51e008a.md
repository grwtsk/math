# IterM.Equiv.filterM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7392c05e-109e-a268-0f15-13c6611a2b33",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.filterM",
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
  "slug": "iterm-equiv-filterm--852093664c1e01adf51e008a",
  "source": {
    "blob": "dc833ea93d5863f75424ff0903ee4be0df5bf442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852093664c1e01adf51e008ae59880e4d6287b5c4c2f6a459c632dfe0ecc0e55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7392c05e-109e-a268-0f15-13c6611a2b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.filterM {α₁ α₂ β : Type w}
    {m : Type w → Type w'} {n : Type w → Type w''} [Monad m] [LawfulMonad m]
    [Monad n] [MonadAttach n] [LawfulMonad n] [Iterator α₁ m β] [Iterator α₂ m β]
    [MonadLiftT m n] [LawfulMonadLiftT m n]
    {f : β → n (ULift Bool)} {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β}
    (h : IterM.Equiv ita itb) :
    IterM.Equiv (ita.filterM f) (itb.filterM f) :=
  IterM.Equiv.filterMapWithPostcondition h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc833ea93d5863f75424ff0903ee4be0df5bf442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
