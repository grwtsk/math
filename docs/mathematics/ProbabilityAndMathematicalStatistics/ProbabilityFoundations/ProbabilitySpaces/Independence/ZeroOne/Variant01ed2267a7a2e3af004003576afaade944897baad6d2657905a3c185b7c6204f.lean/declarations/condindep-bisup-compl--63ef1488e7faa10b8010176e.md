# condIndep_biSup_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bfc489e-5df6-5864-691a-471bd2a9dbe2",
  "kind": "theorem",
  "lexical_name": "condIndep_biSup_compl",
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
  "slug": "condindep-bisup-compl--63ef1488e7faa10b8010176e",
  "source": {
    "blob": "dd8a82532592e7e0240ac9dd4997280ff8d07fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ef1488e7faa10b8010176e24f017641af31769f9b0053dac6861f8069fcb8c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfc489e-5df6-5864-691a-471bd2a9dbe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condIndep_biSup_compl [StandardBorelSpace Ω]
    (hm : m ≤ m0) [IsFiniteMeasure μ]
    (h_le : ∀ n, s n ≤ m0) (h_indep : iCondIndep m hm s μ) (t : Set ι) :
    CondIndep m (⨆ n ∈ t, s n) (⨆ n ∈ tᶜ, s n) hm μ :=
  Kernel.indep_biSup_compl h_le h_indep t

section Abstract

variable {β : Type*} {p : Set ι → Prop} {f : Filter ι} {ns : β → Set ι}

/-! We prove a version of Kolmogorov's 0-1 law for the σ-algebra `limsup s f` where `f` is a filter
for which we can define the following two functions:
* `p : Set ι → Prop` such that for a set `t`, `p t → tᶜ ∈ f`,
* `ns : α → Set ι` a directed sequence of sets which all verify `p` and such that
  `⋃ a, ns a = Set.univ`.

For the example of `f = atTop`, we can take
`p = bddAbove` and `ns : ι → Set ι := fun i => Set.Iic i`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8a82532592e7e0240ac9dd4997280ff8d07fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
