# processRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d69bb86c9f0c93eb29e333fdfac7f76d51980f1df295285969cf55ffb1bcb0d7",
  "kind": "def",
  "lexical_name": "processRequest",
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
  "slug": "processrequest--c10072f8c1eb7edaf662079f",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1209,
    "line": 1094,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10072f8c1eb7edaf662079fc1f69de298c6f896bbc7cbbc6ddf675a693a1bcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d69bb86c9f0c93eb29e333fdfac7f76d51980f1df295285969cf55ffb1bcb0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1094–1209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processRequest (line : String) : IO Unit := do
  let respond (j : Json) : IO Unit := do
    IO.println j.compress
    (← IO.getStdout).flush

  match Json.parse line with
  | Except.error e =>
    respond (Json.mkObj [("error", s!"JSON parse error: {e}")])
  | Except.ok j =>
    let reqId := j.getObjVal? "id" |>.toOption

    match j.getObjValAs? String "method" with
    | Except.error _ =>
      respond (Json.mkObj [("error", "Missing 'method' field")])
    | Except.ok method =>
      let args := match j.getObjVal? "params" with
        | Except.ok a => a
        | Except.error _ => Json.mkObj []

      let result := match method with
        | "eval_interval" =>
          match fromJson? (α := EvalRequest) args with
          | Except.ok req => Json.mkObj [("result", handleEvalInterval req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid eval_interval params: {e}")]

        | "eval_interval_dyadic" =>
          match fromJson? (α := EvalDyadicRequest) args with
          | Except.ok req => Json.mkObj [("result", handleEvalIntervalDyadic req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid eval_interval_dyadic params: {e}")]

        | "eval_interval_affine" =>
          match fromJson? (α := EvalAffineRequest) args with
          | Except.ok req => Json.mkObj [("result", handleEvalIntervalAffine req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid eval_interval_affine params: {e}")]

        | "global_min" =>
          match fromJson? (α := OptimizeRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMin req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_min params: {e}")]

        | "global_max" =>
          match fromJson? (α := OptimizeRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMax req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_max params: {e}")]

        | "global_min_dyadic" =>
          match fromJson? (α := OptimizeDyadicRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMinDyadic req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_min_dyadic params: {e}")]

        | "global_max_dyadic" =>
          match fromJson? (α := OptimizeDyadicRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMaxDyadic req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_max_dyadic params: {e}")]

        | "global_min_affine" =>
          match fromJson? (α := OptimizeAffineRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMinAffine req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_min_affine params: {e}")]

        | "global_max_affine" =>
          match fromJson? (α := OptimizeAffineRequest) args with
          | Except.ok req => Json.mkObj [("result", handleGlobalMaxAffine req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid global_max_affine params: {e}")]

        | "check_bound" =>
          match fromJson? (α := CheckBoundRequest) args with
          | Except.ok req => Json.mkObj [("result", handleCheckBound req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid check_bound params: {e}")]

        | "integrate" =>
          match fromJson? (α := IntegrateRequest) args with
          | Except.ok req => Json.mkObj [("result", handleIntegrate req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid integrate params: {e}")]

        | "find_roots" =>
          match fromJson? (α := FindRootsRequest) args with
          | Except.ok req => Json.mkObj [("result", handleFindRoots req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid find_roots params: {e}")]

        | "find_unique_root" =>
          match fromJson? (α := FindUniqueRootRequest) args with
          | Except.ok req => Json.mkObj [("result", handleFindUniqueRoot req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid find_unique_root params: {e}")]

        | "verify_adaptive" =>
          match fromJson? (α := VerifyAdaptiveRequest) args with
          | Except.ok req => Json.mkObj [("result", handleVerifyAdaptive req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid verify_adaptive params: {e}")]

        | "forward_interval" =>
          match fromJson? (α := ForwardIntervalRequest) args with
          | Except.ok req => Json.mkObj [("result", handleForwardInterval req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid forward_interval params: {e}")]

        | "deriv_interval" =>
          match fromJson? (α := DerivIntervalRequest) args with
          | Except.ok req => Json.mkObj [("result", handleDerivInterval req)]
          | Except.error e => Json.mkObj [("error", s!"Invalid deriv_interval params: {e}")]

        | "ping" =>
          Json.mkObj [("result", "pong")]

        | other =>
          Json.mkObj [("error", s!"Unknown method: {other}")]

      -- Attach ID if present
      let final := match reqId with
        | some id => result.setObjVal! "id" id
        | none => result

      respond final

end LeanCert.Bridge

/-- Main entry point: read lines from stdin, process each as a request -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L1094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
