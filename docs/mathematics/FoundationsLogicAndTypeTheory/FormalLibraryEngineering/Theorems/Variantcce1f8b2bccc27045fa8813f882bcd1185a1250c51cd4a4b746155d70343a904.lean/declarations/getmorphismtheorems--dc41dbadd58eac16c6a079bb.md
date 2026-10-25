# getMorphismTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:434907ef21dd575f08c566fa56830654f5dfc280b9f9b23a1a89219cc6006443",
  "kind": "def",
  "lexical_name": "getMorphismTheorems",
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
  "slug": "getmorphismtheorems--dc41dbadd58eac16c6a079bb",
  "source": {
    "blob": "7165bc5338a6e29e7ac57157e95249b188b51851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc41dbadd58eac16c6a079bb1af48a37c8932c285e902be540632751b4147c80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:434907ef21dd575f08c566fa56830654f5dfc280b9f9b23a1a89219cc6006443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getMorphismTheorems (e : Expr) : FunPropM (Array GeneralTheorem) := do
  let ext := morTheoremsExt.getState (← getEnv)
  let candidates ← withConfig (fun cfg => { cfg with iota := false, zeta := false }) <|
    ext.theorems.getMatchWithScore e false
  let candidates := candidates.map (·.1) |>.flatten
  return candidates


--------------------------------------------------------------------------------


/-- There are four types of theorems:
- lam - theorem about basic lambda calculus terms
- function - theorem about a specific function(declared or free variable) in specific arguments
- mor - special theorems talking about bundled morphisms/DFunLike.coe
- transition - theorems inferring one function property from another

Examples:
- lam
```
  theorem Continuous_id : Continuous fun x => x
  theorem Continuous_comp (hf : Continuous f) (hg : Continuous g) : Continuous fun x => f (g x)
```
- function
```
  theorem Continuous_add : Continuous (fun x => x.1 + x.2)
  theorem Continuous_add (hf : Continuous f) (hg : Continuous g) :
      Continuous (fun x => (f x) + (g x))
```
- mor - the head of function body has to be ``DFunLike.code
```
  theorem ContDiff.clm_apply {f : E → F →L[𝕜] G} {g : E → F}
      (hf : ContDiff 𝕜 n f) (hg : ContDiff 𝕜 n g) :
      ContDiff 𝕜 n fun x => (f x) (g x)
  theorem clm_linear {f : E →L[𝕜] F} : IsLinearMap 𝕜 f
```
- transition - the conclusion has to be in the form `P f` where `f` is a free variable
```
  theorem linear_is_continuous [FiniteDimensional ℝ E] {f : E → F} (hf : IsLinearMap 𝕜 f) :
      Continuous f
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7165bc5338a6e29e7ac57157e95249b188b51851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
