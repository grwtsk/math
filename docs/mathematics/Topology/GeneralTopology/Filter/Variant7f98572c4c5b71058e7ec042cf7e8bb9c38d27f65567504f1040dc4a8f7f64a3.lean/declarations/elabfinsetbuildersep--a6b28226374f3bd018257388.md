# elabFinsetBuilderSep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a1e84c98718782e37441eb4cec1d14ca5587b0de8624cda97c1a6979f151056",
  "kind": "def",
  "lexical_name": "elabFinsetBuilderSep",
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
  "slug": "elabfinsetbuildersep--a6b28226374f3bd018257388",
  "source": {
    "blob": "42c809eeac98c1bcd787b78ed8afed43c8b61325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b28226374f3bd018257388e2c6c72ce5054f1a6940f7f5974686dd6e80332d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a1e84c98718782e37441eb4cec1d14ca5587b0de8624cda97c1a6979f151056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabFinsetBuilderSep : TermElab
  | `({ $x:ident ∈ $s:term | $p }), expectedType? => do
    -- If the expected type is known to be `Set ?α`, give up. If it is not known to be `Set ?α` or
    -- `Finset ?α`, check the expected type of `s`.
    unless ← knownToBeFinsetNotSet expectedType? do
      let ty ← try whnfR (← inferType (← elabTerm s none)) catch _ => throwUnsupportedSyntax
      -- If the expected type of `s` is not known to be `Finset ?α`, give up.
      match_expr ty with
      | Finset _ => pure ()
      | _ => throwUnsupportedSyntax
    -- Finally, we can elaborate the syntax as a finset.
    -- TODO: Seems a bit wasteful to have computed the expected type but still use `expectedType?`.
    elabTerm (← `(Finset.filter (fun $x:ident ↦ $p) $s)) expectedType?
  | _, _ => throwUnsupportedSyntax

end Mathlib.Meta

namespace Finset
section Filter
variable (p q : α → Prop) [DecidablePred p] [DecidablePred q] {s t : Finset α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c809eeac98c1bcd787b78ed8afed43c8b61325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
