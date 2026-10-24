# ContinuousAlternatingMap.instContinuousEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1344806af4bb8c5034b2587497e6100de68f2067833a8e1fe4e9466a760bc177",
  "kind": "instance",
  "lexical_name": "ContinuousAlternatingMap.instContinuousEval",
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
  "slug": "continuousalternatingmap-instcontinuouseval--289353048851139b484e9f85",
  "source": {
    "blob": "462c52a08527078de61c79b7617f7697e57c1568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9e07269ab8158f0f0e49f7fabc945e166fe5fe9c6391818d132df918d4704c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:289353048851139b484e9f852e273fde7b720c1ff1d01ac77c1a05af7857b46c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9e07269ab8158f0f0e49f7fabc945e166fe5fe9c6391818d132df918d4704c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1344806af4bb8c5034b2587497e6100de68f2067833a8e1fe4e9466a760bc177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousAlternatingMap.instContinuousEval {𝕜 ι E F : Type*}
    [NormedField 𝕜] [Finite ι] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
    [TopologicalSpace F] [AddCommGroup F] [IsTopologicalAddGroup F] [Module 𝕜 F] :
    ContinuousEval (E [⋀^ι]→L[𝕜] F) (ι → E) F :=
  .of_continuous_forget continuous_toContinuousMultilinearMap

section Seminorm

universe u wE wF wG v
variable {𝕜 : Type u} {n : ℕ} {E : Type wE} {F : Type wF} {G : Type wG} {ι : Type v}
  [NontriviallyNormedField 𝕜]
  [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
  [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]
  [SeminormedAddCommGroup G] [NormedSpace 𝕜 G]

/-!
### Continuity properties of alternating maps

We relate continuity of alternating maps to the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖`, in
both directions. Along the way, we prove useful bounds on the difference `‖f m₁ - f m₂‖`.
-/
namespace AlternatingMap

/-- If `f` is a continuous alternating map on `E`
and `m` is an element of `ι → E` such that one of the `m i` has norm `0`, then `f m` has norm `0`.

Note that we cannot drop the continuity assumption.
Indeed, let `ℝ₀` be a copy or `ℝ` with zero norm and indiscrete topology.
Then `f : (Unit → ℝ₀) → ℝ` given by `f x = x ()`
sends vector `1` with zero norm to number `1` with nonzero norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9e07269ab8158f0f0e49f7fabc945e166fe5fe9c6391818d132df918d4704c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9e07269ab8158f0f0e49f7fabc945e166fe5fe9c6391818d132df918d4704c62.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `462c52a08527078de61c79b7617f7697e57c1568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
