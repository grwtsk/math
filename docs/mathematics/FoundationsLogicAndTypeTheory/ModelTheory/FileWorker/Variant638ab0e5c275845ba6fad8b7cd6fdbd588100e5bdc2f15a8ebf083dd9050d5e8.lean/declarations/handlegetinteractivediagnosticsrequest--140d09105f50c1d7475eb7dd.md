# handleGetInteractiveDiagnosticsRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:568af7710f8405fc3fb6b97462c2b4086f1f60088b84d50c92ed411bd65268bd",
  "kind": "def",
  "lexical_name": "handleGetInteractiveDiagnosticsRequest",
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
  "slug": "handlegetinteractivediagnosticsrequest--140d09105f50c1d7475eb7dd",
  "source": {
    "blob": "d3ccbe3ecb534e94337108b08e68657d0584bbed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:140d09105f50c1d7475eb7dd7e20c589e5af9f65bae97b137ff5856f8a17eb95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:568af7710f8405fc3fb6b97462c2b4086f1f60088b84d50c92ed411bd65268bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handleGetInteractiveDiagnosticsRequest
      (doc : EditableDocument)
      (params : GetInteractiveDiagnosticsParams)
      : RequestM (Array InteractiveDiagnostic) := do
    -- NOTE: always uses latest document (which is the only one we can retrieve diagnostics for);
    -- any race should be temporary as the client should re-request interactive diagnostics when
    -- they receive the non-interactive diagnostics for the new document
    let allDiags ← doc.collectCurrentDiagnostics
    -- NOTE: does not wait for `lineRange?` to be fully elaborated, which would be problematic with
    -- fine-grained incremental reporting anyway; instead, the client is obligated to resend the
    -- request when the non-interactive diagnostics of this range have changed
    return PersistentArray.toArray <| allDiags.filter fun diag =>
      let r := diag.fullRange
      let diagStartLine := r.start.line
      let diagEndLine   :=
        if r.end.character == 0 then
          r.end.line
        else
          r.end.line + 1
      params.lineRange?.all fun ⟨s, e⟩ =>
        -- does [s,e) intersect [diagStartLine,diagEndLine)?
        s ≤ diagStartLine ∧ diagStartLine < e ∨
        diagStartLine ≤ s ∧ s < diagEndLine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ccbe3ecb534e94337108b08e68657d0584bbed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
