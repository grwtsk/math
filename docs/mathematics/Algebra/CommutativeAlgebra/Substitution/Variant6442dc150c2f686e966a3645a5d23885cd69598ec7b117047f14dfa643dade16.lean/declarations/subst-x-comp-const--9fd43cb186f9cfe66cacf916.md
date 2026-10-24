# subst_X_comp_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16984e582371189eb40c1174b49da057798ce784",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f232f21c-1c10-54c8-ceeb-695c708831ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50277a9c-9592-3b0a-60d0-55e110895f70",
  "kind": "lemma",
  "lexical_name": "subst_X_comp_const",
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
  "slug": "subst-x-comp-const--9fd43cb186f9cfe66cacf916",
  "source": {
    "blob": "16984e582371189eb40c1174b49da057798ce784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 165,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd43cb186f9cfe66cacf9165c0200a2d6409dc1c1435aaf6d622e93954c25ed",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50277a9c-9592-3b0a-60d0-55e110895f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subst_X_comp_const {f : R⟦X⟧} {i : τ} :
    .subst (.X (R := R) ∘ fun _ ↦ i) f = f.subst (.X i) := rfl

variable {a : MvPowerSeries τ S} {b : S⟦X⟧}

/-- Substitution of power series into a power series, as an `AlgHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16984e582371189eb40c1174b49da057798ce784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
