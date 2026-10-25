# WEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d274f5d15a5d4d9f627dfa00970f68234290618f2cefea1431aa81f6f51694c",
  "kind": "inductive",
  "lexical_name": "WEquiv",
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
  "slug": "wequiv--59edfdfe4f3a28bc242f8eb5",
  "source": {
    "blob": "c43e28115819785510f0d9b46182491351a17b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59edfdfe4f3a28bc242f8eb537a406a531309e5dd9a2bba678801cb51ac22028",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d274f5d15a5d4d9f627dfa00970f68234290618f2cefea1431aa81f6f51694c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive WEquiv {α : TypeVec n} : q.P.W α → q.P.W α → Prop
  | ind (a : q.P.A) (f' : q.P.drop.B a ⟹ α) (f₀ f₁ : q.P.last.B a → q.P.W α) :
    (∀ x, WEquiv (f₀ x) (f₁ x)) → WEquiv (q.P.wMk a f' f₀) (q.P.wMk a f' f₁)
  | abs (a₀ : q.P.A) (f'₀ : q.P.drop.B a₀ ⟹ α) (f₀ : q.P.last.B a₀ → q.P.W α) (a₁ : q.P.A)
    (f'₁ : q.P.drop.B a₁ ⟹ α) (f₁ : q.P.last.B a₁ → q.P.W α) :
    abs ⟨a₀, q.P.appendContents f'₀ f₀⟩ = abs ⟨a₁, q.P.appendContents f'₁ f₁⟩ →
      WEquiv (q.P.wMk a₀ f'₀ f₀) (q.P.wMk a₁ f'₁ f₁)
  | trans (u v w : q.P.W α) : WEquiv u v → WEquiv v w → WEquiv u w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43e28115819785510f0d9b46182491351a17b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
