# ContinuousLinearMapWOT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0c30e3032a89a3cd1e033654b8b40aced28e0f360891e5e18db98de7ee2afd7",
  "kind": "def",
  "lexical_name": "ContinuousLinearMapWOT",
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
  "slug": "continuouslinearmapwot--7cf51f40d502815fbd8e3be2",
  "source": {
    "blob": "e4bd693bab61ae686a5b6fcd17bea90aaf072a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cf51f40d502815fbd8e3be24b44e4531b6856055f8853d40b5eecf3da87cbce",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0c30e3032a89a3cd1e033654b8b40aced28e0f360891e5e18db98de7ee2afd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def ContinuousLinearMapWOT (𝕜 : Type*) (E : Type*) (F : Type*) [Semiring 𝕜] [AddCommGroup E]
    [TopologicalSpace E] [Module 𝕜 E] [AddCommGroup F] [TopologicalSpace F] [Module 𝕜 F] :=
  E →L[𝕜] F

@[inherit_doc]
notation:25 E " →WOT[" 𝕜 "] " F => ContinuousLinearMapWOT 𝕜 E F

namespace ContinuousLinearMapWOT

variable {𝕜 : Type*} {E : Type*} {F : Type*} [NormedField 𝕜]
  [AddCommGroup E] [TopologicalSpace E] [Module 𝕜 E]
  [AddCommGroup F] [TopologicalSpace F] [Module 𝕜 F]

local notation X "⋆" => X →L[𝕜] 𝕜

/-!
### Basic properties common with `E →L[𝕜] F`

The section copies basic non-topological properties of `E →L[𝕜] F` over to `E →WOT[𝕜] F`, such as
the module structure, `FunLike`, etc.
-/
section Basic

/-
Warning : Due to the irreducibility of `ContinuousLinearMapWOT`, one has to be careful when
declaring instances with data. For example, adding
```
unseal ContinuousLinearMapWOT in
instance instAddCommMonoid [ContinuousAdd F] : AddCommMonoid (E →WOT[𝕜] F) :=
  inferInstanceAs <| AddCommMonoid (E →L[𝕜] F)
```
would cause the following to fail :
```
example [IsTopologicalAddGroup F] :
  (instAddCommMonoid : AddCommMonoid (E →WOT[𝕜] F)) =
    instAddCommGroup.toAddCommMonoid := rfl
```
-/

unseal ContinuousLinearMapWOT in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4bd693bab61ae686a5b6fcd17bea90aaf072a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
