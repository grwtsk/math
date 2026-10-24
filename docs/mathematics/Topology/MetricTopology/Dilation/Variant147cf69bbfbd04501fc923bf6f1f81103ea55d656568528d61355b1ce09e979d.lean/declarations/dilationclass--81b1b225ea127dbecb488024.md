# DilationClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee9075c1ae2e237d321bd93119e81e4cbbea60b8c99a31cc292c32de893dea55",
  "kind": "class",
  "lexical_name": "DilationClass",
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
  "slug": "dilationclass--81b1b225ea127dbecb488024",
  "source": {
    "blob": "bfde595bb9290423791e36a74a0d12af7a9a2881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81b1b225ea127dbecb4880242c09a1aa64bd3809433f1b5be64c3f146c1d9f9e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee9075c1ae2e237d321bd93119e81e4cbbea60b8c99a31cc292c32de893dea55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DilationClass (F : Type*) (α β : outParam <| Type*) [PseudoEMetricSpace α]
    [PseudoEMetricSpace β] extends FunLike F α fun _ => β where
  edist_eq' : ∀ f : F, ∃ r : ℝ≥0, r ≠ 0 ∧ ∀ x y : α, edist (f x) (f y) = r * edist x y
#align dilation_class DilationClass

end Defs

namespace Dilation

variable {α : Type*} {β : Type*} {γ : Type*} {F : Type*} {G : Type*}

section Setup

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfde595bb9290423791e36a74a0d12af7a9a2881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
