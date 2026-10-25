# GameAdd.fix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d8da80f151a45c8f466789546401c9e99497a69096a876349e7f54f66b1a6f2",
  "kind": "def",
  "lexical_name": "GameAdd.fix",
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
  "slug": "gameadd-fix--fe08e09bbdd9e194d1e7109d",
  "source": {
    "blob": "f9e44533feb499c6ad9652c220507ddd5637360e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe08e09bbdd9e194d1e7109dcd28c3086526be0b2d076b1a84716f395417c9ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d8da80f151a45c8f466789546401c9e99497a69096a876349e7f54f66b1a6f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GameAdd.fix {C : α → α → Sort*} (hr : WellFounded rα)
    (IH : ∀ a₁ b₁, (∀ a₂ b₂, Sym2.GameAdd rα s(a₂, b₂) s(a₁, b₁) → C a₂ b₂) → C a₁ b₁) (a b : α) :
    C a b :=
  @WellFounded.fix (α × α) (fun x => C x.1 x.2)
    (fun x y ↦ Prod.GameAdd rα rα x y ∨ Prod.GameAdd rα rα x.swap y)
    (by simpa [← Sym2.gameAdd_iff] using hr.sym2_gameAdd.onFun)
    (fun ⟨x₁, x₂⟩ IH' => IH x₁ x₂ fun a' b' => IH' ⟨a', b'⟩) (a, b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e44533feb499c6ad9652c220507ddd5637360e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
