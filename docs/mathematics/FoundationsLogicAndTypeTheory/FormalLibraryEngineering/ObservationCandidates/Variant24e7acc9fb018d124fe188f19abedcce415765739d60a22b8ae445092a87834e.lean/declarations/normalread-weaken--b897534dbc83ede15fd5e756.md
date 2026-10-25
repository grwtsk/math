# normalRead_weaken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cedff7ae-b418-cb98-21f5-4557ca132461",
  "kind": "theorem",
  "lexical_name": "normalRead_weaken",
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
  "slug": "normalread-weaken--b897534dbc83ede15fd5e756",
  "source": {
    "blob": "230cae76f88c4053bec60af05b705e7422ee3438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b897534dbc83ede15fd5e756cb260bd973bf31b076286dab658f72e164ec1504",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cedff7ae-b418-cb98-21f5-4557ca132461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalRead_weaken {Γ : List (Expr S)} {A D : Expr S} {s r : S}
    (hA : HasType P Γ A (.sort s)) (hD : HasType P Γ D (.sort r))
    {e : Environment (hw := hw) Ω C hno Γ} {f : Environment (hw := hw) Ω C hno (D :: Γ)}
    {n : Expr S} (he : e.Ext f n) :
    (normalRead Ω C hno (HasType.weaken hA hD) f).val = (normalRead Ω C hno hA e).val := by
  let t := TypingTree.ofTyping (hA.normalForm hw)
  have hh := normalRead_eq_of_nf Ω C hno (HasType.weaken hA hD)
    (t.rename (.cons hD.valid hD) Nat.succ (TypingTree.DeclRenaming.weaken D))
    (Expr.normalForm_rename (hA.weaklyNormalizing hw) Nat.succ) f
  exact hh.trans (preEvaluate_rename Ω C hno t (.cons hD.valid hD) Nat.succ
    (TypingTree.DeclRenaming.weaken D) e f he.reindexed).2.symm

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230cae76f88c4053bec60af05b705e7422ee3438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
