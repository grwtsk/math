# tan_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:763a96a8-b6db-dc12-817a-8b959e1e9caa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:672ef9c2-0034-5e80-33b0-389120480c99",
  "kind": "theorem",
  "lexical_name": "tan_add",
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
  "slug": "tan-add--e5bcccdaac947cc6dbb8ec76",
  "source": {
    "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5bcccdaac947cc6dbb8ec76ffdc9b6870ce38f6e5b43e02a251c2c708db6c35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672ef9c2-0034-5e80-33b0-389120480c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_add {x y : ℝ}
    (h : ((∀ k : ℤ, x ≠ (2 * k + 1) * π / 2) ∧ ∀ l : ℤ, y ≠ (2 * l + 1) * π / 2) ∨
      (∃ k : ℤ, x = (2 * k + 1) * π / 2) ∧ ∃ l : ℤ, y = (2 * l + 1) * π / 2) :
    tan (x + y) = (tan x + tan y) / (1 - tan x * tan y) := by
  simpa only [← Complex.ofReal_inj, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_div,
    Complex.ofReal_mul, Complex.ofReal_tan] using
    @Complex.tan_add (x : ℂ) (y : ℂ) (by convert h <;> norm_cast)
#align real.tan_add Real.tan_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34233bc6a0c1ff7258bd575be27fe803b854a64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
