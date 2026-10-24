# iSup_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d865dcc-d6be-9016-d897-e3261069a958",
  "kind": "theorem",
  "lexical_name": "iSup_induction'",
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
  "slug": "isup-induction--c4adb57df062d815e7d3732e",
  "source": {
    "blob": "9a60db16bed45e40b287fc976f2334b3efaa9ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4adb57df062d815e7d3732e1d0e560f0bee13d4ce0c466ce3e4660b804c5b71",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d865dcc-d6be-9016-d897-e3261069a958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_induction' {ι : Sort*} (S : ι → Submonoid M) {motive : ∀ x, (x ∈ ⨆ i, S i) → Prop}
    (mem : ∀ (i), ∀ (x) (hxS : x ∈ S i), motive x (mem_iSup_of_mem i hxS))
    (one : motive 1 (one_mem _))
    (mul : ∀ x y hx hy, motive x hx → motive y hy → motive (x * y) (mul_mem ‹_› ‹_›)) {x : M}
    (hx : x ∈ ⨆ i, S i) : motive x hx := by
  refine Exists.elim (?_ : ∃ Hx, motive x Hx) fun (hx : x ∈ ⨆ i, S i) (hc : motive x hx) => hc
  refine @iSup_induction _ _ ι S (fun m => ∃ hm, motive m hm) _ hx (fun i x hx => ?_) ?_
      fun x y => ?_
  · exact ⟨_, mem _ _ hx⟩
  · exact ⟨_, one⟩
  · rintro ⟨_, Cx⟩ ⟨_, Cy⟩
    exact ⟨_, mul _ _ _ _ Cx Cy⟩

end Submonoid

end NonAssoc

namespace FreeMonoid

variable {α : Type*}

open Submonoid

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a60db16bed45e40b287fc976f2334b3efaa9ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
