# elabNoMatch'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ef11becaf70f40a84d0a66f31b9dd61b0334bc76c3102cad467d58980dee22d",
  "kind": "def",
  "lexical_name": "elabNoMatch'",
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
  "slug": "elabnomatch--7dacd8117cf7530065d44733",
  "source": {
    "blob": "e168a2f560cc19b6ec72fe1c148d55298d92f9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variantbda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dacd8117cf7530065d44733b8c0177e662b8731515c45f5743423bc57c62ef0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variantbda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ef11becaf70f40a84d0a66f31b9dd61b0334bc76c3102cad467d58980dee22d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[term_elab noMatch] def elabNoMatch' : TermElab
| `(match $discrs,* with.), expectedType? => do
  let discrs := discrs.getElems
  for h : i in [0:discrs.size] do
    have h : i < discrs.size := h.2
    let `(matchDiscr| $[$n :]? $discr:term) := discrs[i] | throwUnsupportedSyntax
    if ← isAtomicDiscr discr then
      tryPostponeIfMVar (← Meta.inferType (← elabTerm discr none))
    else
      let discrs := discrs.set ⟨i, h⟩ (← `(matchDiscr| $[$n :]? ?x))
      return ← elabTerm (← `(let_mvar% ?x := $discr; match $discrs,* with.)) expectedType?
  let expectedType ← waitExpectedType expectedType?
  elabMatchAux none discrs #[] mkNullNode expectedType
| _, _ => throwUnsupportedSyntax

/--
The syntax  `fun.` or `λ.` (dot required) is shorthand for an empty pattern match function,
i.e. `fun x y z => match x, y, z with.` for an appropriate number of arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variantbda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variantbda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e168a2f560cc19b6ec72fe1c148d55298d92f9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
