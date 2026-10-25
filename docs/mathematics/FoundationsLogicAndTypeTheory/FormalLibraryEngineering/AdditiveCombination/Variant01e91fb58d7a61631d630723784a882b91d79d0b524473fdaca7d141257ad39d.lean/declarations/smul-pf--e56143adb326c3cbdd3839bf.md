# smul_pf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c1080a-5f52-ec0d-c968-28f3cd59a4a5",
  "kind": "theorem",
  "lexical_name": "smul_pf",
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
  "slug": "smul-pf--e56143adb326c3cbdd3839bf",
  "source": {
    "blob": "7d905a653bf1c7ad2d66704053f3b3a362286fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e56143adb326c3cbdd3839bfaae0641ee0f1f226b028f14bee919c2c84a61c90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c1080a-5f52-ec0d-c968-28f3cd59a4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_pf [SMul α β] {a₁ b₁ : α} (p₁ : (a₁ : α) = b₁) {a₂ b₂ : β} (p₂ : a₂ = b₂) :
    a₁ • a₂ = b₁ • b₂ := p₁ ▸ p₂ ▸ rfl

/--
Performs macro expansion of a additive combination expression,
using `+`/`-`/`*`/`/` on equations and values.
* `.proof p` means that `p` is a syntax corresponding to a proof of an equation.
  For example, if `h : a = b` then `expandAdditiveCombo (2 • h)` returns `.proof (c_add_pf 2 h)`
  which is a proof of `2 • a = 2 • b`.
* `.const c` means that the input expression is not an equation but a value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d905a653bf1c7ad2d66704053f3b3a362286fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
