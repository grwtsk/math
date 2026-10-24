# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a4e1fdf5a2bb6bc1c741b76fe112edb83ba0b20204b6c95b1cbbfaad63d0d1",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--f2bbfb7e277f4d1752ee22c9",
  "source": {
    "blob": "4511ec66c97b4b8d13c705d50eb942dfad1a8cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 556,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2bbfb7e277f4d1752ee22c92ff5e509ddad74471b5e012652af13a9fd8670e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a4e1fdf5a2bb6bc1c741b76fe112edb83ba0b20204b6c95b1cbbfaad63d0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift (e : Embedding P Γ γ Δ δ) {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) (d : Mode) :
    Embedding P (A :: Γ) (modeCons d γ) (A.rename e.names :: Δ) (modeCons d δ) where
  names := Expr.liftRen e.names
  valid := .cons e.valid (e.typing hA)
  typed n B hn := by
    cases hn with
    | zero =>
      simpa only [Expr.rename_comp,Expr.liftRen,PureTypeSystem.Expr.liftRen,Function.comp_def,
        Expr.rename] using HasType.var (e.typing hA)
    | succ D hn =>
      simpa only [Expr.rename_comp,Expr.liftRen,PureTypeSystem.Expr.liftRen,Function.comp_def,
        Expr.rename] using HasType.weaken (e.typed _ _ hn) (e.typing hA)
  modes n := by cases n with | zero => rfl | succ n => exact e.modes n
end Embedding

namespace ProofContext
variable {S : Type u} {Γ : List (Expr S)} {γ : Nat → Mode}
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4511ec66c97b4b8d13c705d50eb942dfad1a8cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
