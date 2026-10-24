# toSubarray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3562397663032685686afbcfa46aa0598e25fe5d69384ba13707622386d3fe6c",
  "kind": "def",
  "lexical_name": "toSubarray",
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
  "slug": "tosubarray--eccb38d5f2382277cefcb50e",
  "source": {
    "blob": "a19f96df7f0c05a749bf437b769a085f21f6423c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eccb38d5f2382277cefcb50e6845ed18668f7213ff2b3a061ea2609a650520a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3562397663032685686afbcfa46aa0598e25fe5d69384ba13707622386d3fe6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSubarray (as : Array α) (start : Nat := 0) (stop : Nat := as.size) : Subarray α :=
  if h₂ : stop ≤ as.size then
    if h₁ : start ≤ stop then
      ⟨{ array := as, start := start, stop := stop,
         start_le_stop := h₁, stop_le_array_size := h₂ }⟩
    else
      ⟨{ array := as, start := stop, stop := stop,
         start_le_stop := Nat.le_refl _, stop_le_array_size := h₂ }⟩
  else
    if h₁ : start ≤ as.size then
      ⟨{ array := as,
         start := start,
         stop := as.size,
         start_le_stop := h₁,
         stop_le_array_size := Nat.le_refl _ }⟩
    else
      ⟨{ array := as,
         start := as.size,
         stop := as.size,
         start_le_stop := Nat.le_refl _,
         stop_le_array_size := Nat.le_refl _ }⟩

/-- A subarray with the provided bounds.-/
syntax:max term noWs "[" withoutPosition(term ":" term) "]" : term
/-- A subarray with the provided lower bound that extends to the rest of the array. -/
syntax:max term noWs "[" withoutPosition(term ":") "]" : term
/-- A subarray with the provided upper bound, starting at the index 0. -/
syntax:max term noWs "[" withoutPosition(":" term) "]" : term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a19f96df7f0c05a749bf437b769a085f21f6423c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
