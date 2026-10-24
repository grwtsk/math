# hasExponent_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e79f7a4beeac97a663bc8c65201575c409812f77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6de5e51a-48e1-2987-69de-7d0b1b8e445b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9fc3315-6495-67b0-64ce-d5da48ea7324",
  "kind": "theorem",
  "lexical_name": "hasExponent_iff'",
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
  "slug": "hasexponent-iff--26f804ace06dcf2d26d28f22",
  "source": {
    "blob": "e79f7a4beeac97a663bc8c65201575c409812f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f804ace06dcf2d26d28f2280b5655024e10781459878052f62d445d9c18b48",
  "verification": {
    "reference": "docs/verification/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9fc3315-6495-67b0-64ce-d5da48ea7324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasExponent_iff' (p : ℕ) [ExpChar K p] :
    HasExponent K L ↔ ∃ e, ∀ (a : L), a ^ p ^ e ∈ (algebraMap K L).range :=
  ringExpChar.eq K p ▸ hasExponent_iff K L

open scoped Classical in
/-- The *exponent* of a purely inseparable extension is the smallest
natural number `e` such that `a ^ ringExpChar K ^ e ∈ K` for all `a ∈ L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79f7a4beeac97a663bc8c65201575c409812f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
