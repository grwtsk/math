# InnerProductSpace.rclikeToReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7ff917652d32c72c703f6d0e8e7084c7a6bea25f9c2a0192794c905f0e24ebe",
  "kind": "abbrev",
  "lexical_name": "InnerProductSpace.rclikeToReal",
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
  "slug": "innerproductspace-rcliketoreal--b6c76bec87b0c2af0b3a9de5",
  "source": {
    "blob": "75aac879ab48e009bb05b5a71a189750e85382e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 956,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6c76bec87b0c2af0b3a9de56983881f9950fb958a201a9de88c19fe94198b69",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7ff917652d32c72c703f6d0e8e7084c7a6bea25f9c2a0192794c905f0e24ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 956–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev InnerProductSpace.rclikeToReal : InnerProductSpace ℝ E :=
  { Inner.rclikeToReal 𝕜 E,
    NormedSpace.restrictScalars ℝ 𝕜 E with
    norm_sq_eq_re_inner := norm_sq_eq_re_inner
    conj_inner_symm := fun _ _ => inner_re_symm _ _
    add_left := fun x y z => by
      simp +instances only [Inner.rclikeToReal, inner_add_left, map_add]
    smul_left := fun x y r => by
      let := NormedSpace.restrictScalars ℝ 𝕜 E
      have : r • x = (r : 𝕜) • x := rfl
      simp +instances only [Inner.rclikeToReal, this, conj_trivial, inner_smul_left, conj_ofReal,
        re_ofReal_mul] }

variable {E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant37f344e714ecfc34dccb622577edc40e7ff388b53d2008e3c796128f1a46d9dd.lean#L956).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75aac879ab48e009bb05b5a71a189750e85382e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
