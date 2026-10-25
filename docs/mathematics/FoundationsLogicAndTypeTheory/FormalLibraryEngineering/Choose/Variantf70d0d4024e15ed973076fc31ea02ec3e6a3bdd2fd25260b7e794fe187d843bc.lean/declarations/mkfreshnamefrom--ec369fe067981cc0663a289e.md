# mkFreshNameFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9ce5d49caa34c2f5b215414bf5d49bc41a7d3d9c6233559846d49aca076f837",
  "kind": "def",
  "lexical_name": "mkFreshNameFrom",
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
  "slug": "mkfreshnamefrom--ec369fe067981cc0663a289e",
  "source": {
    "blob": "910c9d6fe5919d6a17f055566a1166159904985f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec369fe067981cc0663a289e5a9f6431b73977d758be8c77df42bd38b2b8873e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9ce5d49caa34c2f5b215414bf5d49bc41a7d3d9c6233559846d49aca076f837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFreshNameFrom (orig base : Name) : CoreM Name :=
  if orig = `_ then mkFreshUserName base else pure orig

/-- Changes `(h : ∀xs, ∃a:α, p a) ⊢ g` to `(d : ∀xs, a) ⊢ (s : ∀xs, p (d xs)) → g` and
`(h : ∀xs, p xs ∧ q xs) ⊢ g` to `(d : ∀xs, p xs) ⊢ (s : ∀xs, q xs) → g`.
`choose1` returns a tuple of

- the error result (see `ElimStatus`)
- the data new free variable that was "chosen"
- the new goal (which contains the spec of the data as domain of an arrow type)

If `nondep` is true and `α` is inhabited, then it will remove the dependency of `d` on
all propositional assumptions in `xs`. For example if `ys` are propositions then
`(h : ∀xs ys, ∃a:α, p a) ⊢ g` becomes `(d : ∀xs, a) (s : ∀xs ys, p (d xs)) ⊢ g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `910c9d6fe5919d6a17f055566a1166159904985f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
