# runSage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a48239d156d749d71e0fa0586f3481f1662676613b5367d022e38f584acdcae6",
  "kind": "def",
  "lexical_name": "runSage",
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
  "slug": "runsage--9fde764ef4178c9ca9f2378e",
  "source": {
    "blob": "789f818a47ad3a0baab32d3e4005c0b68ae9a8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fde764ef4178c9ca9f2378e78d422578e0dbe6bdc346dc2b1357a2ed8de82d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a48239d156d749d71e0fa0586f3481f1662676613b5367d022e38f584acdcae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runSage (trace : Bool) (α : Expr) (atoms : Nat) (hyps : Array (Source × Poly)) (target : Poly) :
    CoreM SageResult := do
  let query ← sageCreateQuery α atoms hyps target
  if trace then
    -- dry run enabled
    return .ok { trace := query }

  -- send query to SageMath API
  let apiUrl := "https://sagecell.sagemath.org/service"
  let data := s!"code={System.Uri.escapeUri query}"
  let curlArgs := #[
    "-X", "POST",
    "--user-agent", polyrith.sageUserAgent.get (← getOptions),
    "--data-raw", data,
    apiUrl
  ]
  let out ← IO.Process.output { cmd := "curl", args := curlArgs }
  if out.exitCode != 0 then
    IO.throwServerError <|
      "Could not send API request to SageMath. " ++
      s!"curl exited with code {out.exitCode}:\n{out.stderr}"

  -- parse results
  match Json.parse out.stdout >>= fromJson? with
  | .ok result => return result
  | .error e => IO.throwServerError <|
      s!"Could not parse SageMath output (error: {e})\nSageMath output:\n{out.stdout}"

end SageMathApi


/-! # Main function -/

/--
This is the main body of the `polyrith` tactic. It takes in the following inputs:
* `only : Bool` - This represents whether the user used the key word "only"
* `hyps : Array Expr` - the hypotheses/proof terms selected by the user
* `traceOnly : Bool` - If enabled, the returned syntax will be `.missing`

First, the tactic converts the target into a `Poly`, and finds out what type it
is an equality of. (It also fills up a list of `Expr`s with its atoms). Then, it
collects all the relevant hypotheses/proof terms from the context, and from those
selected by the user, taking into account whether `only` is true. (The list of atoms is
updated accordingly as well).

This information is used to create an appropriate SageMath script that executes a
Groebner basis computation, which is sent to SageMath's API server.
The output of this computation is a JSON representing the certificate.
This JSON is parsed into the power of the goal and a list of `Poly` objects
that are then converted into `Expr`s (using the updated list of atoms).

the names of the hypotheses, along with the corresponding coefficients are
given to `linear_combination`. If that tactic succeeds, the user is prompted
to replace the call to `polyrith` with the appropriate call to
`linear_combination`.

Returns `.error g` if this was a "dry run" attempt that does not actually invoke sage.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789f818a47ad3a0baab32d3e4005c0b68ae9a8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
