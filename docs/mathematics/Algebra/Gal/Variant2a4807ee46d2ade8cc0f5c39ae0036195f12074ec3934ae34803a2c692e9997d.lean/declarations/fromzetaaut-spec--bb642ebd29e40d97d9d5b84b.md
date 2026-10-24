# fromZetaAut_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee32e8eb-05d7-572c-b27d-790e2bfc5937",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62a62fb3-77df-2274-ded1-d3375b6d3b74",
  "kind": "theorem",
  "lexical_name": "fromZetaAut_spec",
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
  "slug": "fromzetaaut-spec--bb642ebd29e40d97d9d5b84b",
  "source": {
    "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb642ebd29e40d97d9d5b84bca3e599ce300c6fd1ac83ce15d50ad118b42c68c",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62a62fb3-77df-2274-ded1-d3375b6d3b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromZetaAut_spec : fromZetaAut hμ h (zeta n K L) = μ := by
  simp_rw [fromZetaAut, autEquivPow_symm_apply]
  generalize_proofs hζ h _ hμ _
  nth_rewrite 4 [← hζ.powerBasis_gen K]
  rw [PowerBasis.equivOfMinpoly_gen, hμ.powerBasis_gen K]
  convert h.choose_spec.2
  exact ZMod.val_cast_of_lt h.choose_spec.1

end IsCyclotomicExtension

section Gal

variable [Field L] [Algebra K L] [IsCyclotomicExtension {n} K L]
  (h : Irreducible (cyclotomic n K)) {K}

/-- `IsCyclotomicExtension.autEquivPow` repackaged in terms of `Gal`.
Asserts that the Galois group of `cyclotomic n K` is equivalent to `(ZMod n)ˣ`
if `cyclotomic n K` is irreducible in the base field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef2d433971d719feeb35931bfdcf576ae9bc9659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
