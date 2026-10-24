# sepQuotRingEquivRingQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9270c0a5a18c497a7bae04c90589dc14fc32b2003eb68809ca6b1c7a67f17f1",
  "kind": "def",
  "lexical_name": "sepQuotRingEquivRingQuot",
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
  "slug": "sepquotringequivringquot--5e8d6140271e11d23407f207",
  "source": {
    "blob": "85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e8d6140271e11d23407f2071c200a4636365d32611daf9158b32715f6f7e33d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9270c0a5a18c497a7bae04c90589dc14fc32b2003eb68809ca6b1c7a67f17f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sepQuotRingEquivRingQuot (α) [CommRing α] [TopologicalSpace α] [IsTopologicalRing α] :
    SeparationQuotient α ≃+* α ⧸ (⊥ : Ideal α).closure where
  __ := sepQuotHomeomorphRingQuot α
  map_mul' := SeparationQuotient.surjective_mk.forall₂.2 (fun _ _ ↦ rfl)
  map_add' := SeparationQuotient.surjective_mk.forall₂.2 (fun _ _ ↦ rfl)

end UniformSpace

section UniformExtension

variable {α : Type*} [UniformSpace α] [Semiring α]
variable {β : Type*} [UniformSpace β] [Semiring β] [IsTopologicalSemiring β]
variable {γ : Type*} [UniformSpace γ] [Semiring γ] [IsTopologicalSemiring γ]
variable [T2Space γ] [CompleteSpace γ]

/-- The dense inducing extension as a ring homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
