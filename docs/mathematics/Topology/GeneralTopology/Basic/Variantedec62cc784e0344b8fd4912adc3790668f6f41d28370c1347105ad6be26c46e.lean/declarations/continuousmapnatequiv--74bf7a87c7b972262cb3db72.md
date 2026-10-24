# continuousMapNatEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6b6bb8bf71f35f3a5c8f070160952d91dbf2d326b87fae0cddcdc61074123cf",
  "kind": "def",
  "lexical_name": "continuousMapNatEquiv",
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
  "slug": "continuousmapnatequiv--74bf7a87c7b972262cb3db72",
  "source": {
    "blob": "3b06bda08122ae49503febfe80755ec5b014be69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74bf7a87c7b972262cb3db72c98d5599119914da8623d0e10d17c1e436894989",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6b6bb8bf71f35f3a5c8f070160952d91dbf2d326b87fae0cddcdc61074123cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMapNatEquiv (Y : Type*) [TopologicalSpace Y] [T2Space Y] :
    C(OnePoint ℕ, Y) ≃ { f : ℕ → Y // ∃ L, Tendsto (f ·) atTop (𝓝 L) } := by
  refine (continuousMapDiscreteEquiv ℕ Y).trans {
    toFun := fun ⟨f, hf⟩ ↦ ⟨f, by rwa [← Nat.cofinite_eq_atTop]⟩
    invFun := fun ⟨f, hf⟩ ↦ ⟨f, by rwa [Nat.cofinite_eq_atTop]⟩ }

/-- If `X` is not a compact space, then the natural embedding `X → OnePoint X` has dense range.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06bda08122ae49503febfe80755ec5b014be69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
