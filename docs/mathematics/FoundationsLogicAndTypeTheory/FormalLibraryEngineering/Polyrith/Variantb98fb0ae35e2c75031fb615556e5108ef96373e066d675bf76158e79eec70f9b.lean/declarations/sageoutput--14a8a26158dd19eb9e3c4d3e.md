# sageOutput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:578a0c7c5628264f4ef4e452ae1fec06373cdcf831672c5061058d7ca0519991",
  "kind": "def",
  "lexical_name": "sageOutput",
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
  "slug": "sageoutput--14a8a26158dd19eb9e3c4d3e",
  "source": {
    "blob": "4ee028d7c404ac0cd8d4fea00009416f745159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14a8a26158dd19eb9e3c4d3e5bd03b8ea5beeb773b258ae944092678d142b4d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:578a0c7c5628264f4ef4e452ae1fec06373cdcf831672c5061058d7ca0519991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sageOutput (args : Array String) : IO SageResult := do
  let path := (← getMathlibDir) / "scripts" / "polyrith_sage.py"
  unless ← path.pathExists do
    throw <| IO.userError "could not find python script scripts/polyrith_sage.py"
  let s ← IO.Process.run { cmd := "python3", args := #[path.toString] ++ args }
  match Json.parse s >>= fromJson? with
  | .ok v => return v
  | .error e => throw <| .userError e

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

This information is used to create a list of args that get used in a call to
the appropriate python file that executes a grobner basis computation. The
output of this computation is a `String` representing the certificate. This
string is parsed into a list of `Poly` objects that are then converted into
`Expr`s (using the updated list of atoms).

the names of the hypotheses, along with the corresponding coefficients are
given to `linear_combination`. If that tactic succeeds, the user is prompted
to replace the call to `polyrith` with the appropriate call to
`linear_combination`.

Returns `.error g` if this was a "dry run" attempt that does not actually invoke sage.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ee028d7c404ac0cd8d4fea00009416f745159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
