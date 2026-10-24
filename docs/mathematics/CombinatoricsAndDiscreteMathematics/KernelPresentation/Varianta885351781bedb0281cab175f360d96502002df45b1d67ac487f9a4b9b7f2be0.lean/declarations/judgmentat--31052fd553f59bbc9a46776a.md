# JudgmentAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06c52e01a29e4e97e79a647178367136a791513049284bfd6c5e725c7293bb81",
  "kind": "abbrev",
  "lexical_name": "JudgmentAt",
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
  "slug": "judgmentat--31052fd553f59bbc9a46776a",
  "source": {
    "blob": "39a60c85516deb92d5c900cce38736a244331470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31052fd553f59bbc9a46776afa282c623180e56a89a7ea5716ad9e22b011ca6e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06c52e01a29e4e97e79a647178367136a791513049284bfd6c5e725c7293bb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev JudgmentAt (K : KernelPresentation) (context : K.LocalContext) :=
  ScopedJudgment.At (UniverseContext := K.UniverseContext) (Expr := K.Expr) context

/--
**Architectural problem:** Leaf provenance must not be manufactured by an
internal node that still has proof premises.

**Type-enforced invariant:** `leafOrigin?` can be called only in the empty-list
branch, so non-leaf rules contribute the empty provenance set by construction.

**Boundary cases:** A genuine leaf may still have no provenance label (`none`);
this function then contributes the empty set.

**Important data and indices:** The rule's premise list determines whether the
function may inspect `leafOrigin?`.

**Layer boundary:** Provenance is presentation metadata, not a theorem or
trusted-boundary certificate.

**Worked example:** The toy internal-constant leaf contributes
`.internalConstant`, while unary nodes contribute nothing directly.

**Used by:** `RawDer.leafOrigins` and its compilation-preservation theorem.

**Proof idea:** Pattern matching on the indexed premise list exposes the empty
case required by `leafOrigin?`.

**Equality notion:** Results use exact `Finset` equality over leaf-origin names.

**Validation consequence:** The function preserves declared provenance but
does not prove that a concrete adapter classified every leaf correctly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a60c85516deb92d5c900cce38736a244331470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
