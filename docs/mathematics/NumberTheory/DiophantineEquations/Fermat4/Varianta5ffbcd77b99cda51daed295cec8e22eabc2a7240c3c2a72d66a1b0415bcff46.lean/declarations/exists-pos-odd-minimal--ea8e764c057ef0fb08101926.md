# exists_pos_odd_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f63156-ee55-8a20-798e-bd8abcd4064f",
  "kind": "theorem",
  "lexical_name": "exists_pos_odd_minimal",
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
  "slug": "exists-pos-odd-minimal--ea8e764c057ef0fb08101926",
  "source": {
    "blob": "0ee92ef1ec8c5716d7667065593062873a64a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8e764c057ef0fb081019260b1937f89306c1ac384e7c2ea33f0a703983204d",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f63156-ee55-8a20-798e-bd8abcd4064f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_odd_minimal {a b c : ℤ} (h : Fermat42 a b c) :
    ∃ a0 b0 c0, Minimal a0 b0 c0 ∧ a0 % 2 = 1 ∧ 0 < c0 := by
  obtain ⟨a0, b0, c0, hf, hc⟩ := exists_odd_minimal h
  rcases lt_trichotomy 0 c0 with (h1 | h1 | h1)
  · use a0, b0, c0
  · exfalso
    exact ne_zero hf.1 h1.symm
  · use a0, b0, -c0, neg_of_minimal hf, hc
    exact neg_pos.mpr h1
#align fermat_42.exists_pos_odd_minimal Fermat42.exists_pos_odd_minimal

end Fermat42

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee92ef1ec8c5716d7667065593062873a64a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
