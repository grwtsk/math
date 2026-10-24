# DataWitnessContext.ofFeasible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2647f0a60a042abf8b1ee81d823ddf2770d6b60f89a77ebb923424490b54e78",
  "kind": "def",
  "lexical_name": "DataWitnessContext.ofFeasible",
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
  "slug": "datawitnesscontext-offeasible--05a8f5cc59c9128b863123f1",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14801,
    "line": 14779,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05a8f5cc59c9128b863123f150c3a98add0ab69adc6182033238345155d5f066",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2647f0a60a042abf8b1ee81d823ddf2770d6b60f89a77ebb923424490b54e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14779–14801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def DataWitnessContext.ofFeasible {S : Type u} {P : Specification S}
    (F : Finset (Set S)) (hF : ∀ I ∈ F, FeasibleProfile P I) : DataWitnessContext P F := by
  let hh := FeasibleProfile.finite_witnesses F hF
  let Γ := hh.choose
  have hv : PureTypeSystem.ValidContext P Γ := hh.choose_spec.1
  refine ⟨Γ.map Expr.data, ValidContext.data hv, ?_, ?_⟩
  · intro A hA
    obtain ⟨B, _, rfl⟩ := List.mem_map.mp hA
    exact Expr.data_allData B
  · intro I hi
    obtain ⟨T, e, hT, hs, he⟩ := hh.choose_spec.2 I hi
    exact ⟨Expr.data T, Expr.data e, Expr.data_allData T, Expr.data_allData e,
      by simpa only [Expr.erase_data] using hT, fun s hs' => HasType.data (hs s hs'), HasType.data he⟩

end Labelled
end

/- Finite signed-path choices for channels. -/

namespace SignedPath
variable {V : Type*} {E : V → V → Bool → Prop}

/-- Any odd walk has a negative edge with an even remaining suffix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L14779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
