# div_eq_div_of_div_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ecea3f-51b1-5cc4-1ab1-f035ebb0ed73",
  "kind": "lemma",
  "lexical_name": "div_eq_div_of_div_eq_div",
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
  "slug": "div-eq-div-of-div-eq-div--5b154d885455d75a4a7d911c",
  "source": {
    "blob": "8a28e9153e24169504b6c11588408ad39d10d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 493,
    "path": "GRWTSK/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b154d885455d75a4a7d911c759448edf9ba62958cab7e76561f9145fae351fe",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ecea3f-51b1-5cc4-1ab1-f035ebb0ed73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma div_eq_div_of_div_eq_div (hc : c ≠ 0) (hd : d ≠ 0) (h : a / b = c / d) : a / c = b / d :=
  have hb : b ≠ 0 := by
    intro hb
    rw [hb, div_zero] at h
    exact div_ne_zero hc hd h.symm
  (div_eq_div_iff_div_eq_div' hb hc).mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a28e9153e24169504b6c11588408ad39d10d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
