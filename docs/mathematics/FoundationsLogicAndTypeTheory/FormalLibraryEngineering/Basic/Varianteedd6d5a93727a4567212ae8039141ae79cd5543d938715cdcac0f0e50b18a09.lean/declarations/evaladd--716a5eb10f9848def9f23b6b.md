# evalAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7dfa5938535fb7ab1b1a3083e628965177657d492197b42cdde6f5085b0fe67",
  "kind": "def",
  "lexical_name": "evalAdd",
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
  "slug": "evaladd--716a5eb10f9848def9f23b6b",
  "source": {
    "blob": "199b4667a30b01ece8856acfe3e52a15791e68aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:716a5eb10f9848def9f23b6b352a77d05ad5467303d217346066729b55379a00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7dfa5938535fb7ab1b1a3083e628965177657d492197b42cdde6f5085b0fe67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalAdd {a b : Q($α)} (va : ExSum sα a) (vb : ExSum sα b) :
    Lean.Core.CoreM <| Result (ExSum sα) q($a + $b) := do
  Lean.Core.checkSystem decl_name%.toString
  match va, vb with
  | .zero, vb => return ⟨b, vb, q(add_pf_zero_add $b)⟩
  | va, .zero => return ⟨a, va, q(add_pf_add_zero $a)⟩
  | .add (a := a₁) (b := _a₂) va₁ va₂, .add (a := b₁) (b := _b₂) vb₁ vb₂ =>
    match ← (evalAddOverlap sα va₁ vb₁).run with
    | some (.nonzero ⟨_, vc₁, pc₁⟩) =>
      let ⟨_, vc₂, pc₂⟩ ← evalAdd va₂ vb₂
      return ⟨_, .add vc₁ vc₂, q(add_pf_add_overlap $pc₁ $pc₂)⟩
    | some (.zero pc₁) =>
      let ⟨c₂, vc₂, pc₂⟩ ← evalAdd va₂ vb₂
      return ⟨c₂, vc₂, q(add_pf_add_overlap_zero $pc₁ $pc₂)⟩
    | none =>
      if let .lt := va₁.cmp vb₁ then
        let ⟨_c, vc, (pc : Q($_a₂ + ($b₁ + $_b₂) = $_c))⟩ ← evalAdd va₂ vb
        return ⟨_, .add va₁ vc, q(add_pf_add_lt $a₁ $pc)⟩
      else
        let ⟨_c, vc, (pc : Q($a₁ + $_a₂ + $_b₂ = $_c))⟩ ← evalAdd va vb₂
        return ⟨_, .add vb₁ vc, q(add_pf_add_gt $b₁ $pc)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199b4667a30b01ece8856acfe3e52a15791e68aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
