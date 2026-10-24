# OrdConnected.preimage_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d4b7de2-2e20-70ea-af50-4995ecef53f5",
  "kind": "theorem",
  "lexical_name": "OrdConnected.preimage_antitoneOn",
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
  "slug": "ordconnected-preimage-antitoneon--65ddd32c612bea4bc575405b",
  "source": {
    "blob": "b10286a7a416d4efbcc044d419910677a3ecb09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ddd32c612bea4bc575405b6083ae5a2a747e241edc4f64c8ace23ab3aa7ffa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d4b7de2-2e20-70ea-af50-4995ecef53f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrdConnected.preimage_antitoneOn {f : β → α} {t : Set β} {s : Set α}
    (hs : OrdConnected s) (hf : AntitoneOn f t) :
    ∃ u, OrdConnected u ∧ t ∩ f ⁻¹' s = t ∩ u :=
  (OrdConnected.preimage_monotoneOn hs.dual hf.dual_right :)

end Preorder

section PartialOrder

variable {α : Type*} [PartialOrder α] {s : Set α} {x y : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10286a7a416d4efbcc044d419910677a3ecb09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
