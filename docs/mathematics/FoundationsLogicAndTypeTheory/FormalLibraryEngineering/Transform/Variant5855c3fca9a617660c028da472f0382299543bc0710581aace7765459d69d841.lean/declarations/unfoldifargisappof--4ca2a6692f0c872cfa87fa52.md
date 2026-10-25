# unfoldIfArgIsAppOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0d727ddf56877e07dd093d364e54711b46f062777f552b0e609e093253c28cc",
  "kind": "def",
  "lexical_name": "unfoldIfArgIsAppOf",
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
  "slug": "unfoldifargisappof--4ca2a6692f0c872cfa87fa52",
  "source": {
    "blob": "e50c746d3704023bfbd43a7a027eb238c7fa5446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ca2a6692f0c872cfa87fa52d7319ec1efc8f8a0d4dac4c699495223516e4e03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0d727ddf56877e07dd093d364e54711b46f062777f552b0e609e093253c28cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldIfArgIsAppOf (fnNames : Array Name) (numSectionVars : Nat) (e : Expr) : CoreM Expr := withoutExporting do
  let env ← getEnv
  -- Unfold abstracted proofs
  Core.transform e
    (pre := fun e => e.withAppRev fun f revArgs => do
      if f.isConst then
        /-
        How do we avoid unfolding declarations where the user happened to
        have called with the recursive function as an unsaturated argument?
        Such cases are not caught by the following check,
        because such explicit recursive calls would always have a
        isRecApp mdata wrapper around.
        This is arguably somewhat fragile, but it works for now.
        Alternatives if this breaks:
         * Keep a local env extension to reliably recognize abstracted proofs
         * Avoid abstracting over implementation detail applications
        (The code below is restricted to theorems, as otherwise it would unfold
        matchers, which can also abstract over recursive calls without an `mdata` wrapper, #2102.)
        -/
        if revArgs.any isInterestingArg then
          if let some info@(.thmInfo _) := env.find? f.constName! then
            return .visit <| (← instantiateValueLevelParams info f.constLevels! (allowOpaque := true)).betaRev revArgs
      return .continue)
  where
    isInterestingArg (a : Expr) : Bool := a.withApp fun af axs =>
      af.isConst && fnNames.any fun f => af.constName! == f && axs.size ≤ numSectionVars


/-- Removes all `inaccessible` annotations from `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50c746d3704023bfbd43a7a027eb238c7fa5446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
