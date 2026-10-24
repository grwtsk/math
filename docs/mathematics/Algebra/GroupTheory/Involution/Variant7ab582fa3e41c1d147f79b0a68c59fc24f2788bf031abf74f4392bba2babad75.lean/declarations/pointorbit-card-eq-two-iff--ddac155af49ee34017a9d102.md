# pointOrbit_card_eq_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9894c7e9-97da-36cd-e382-4c1a1e33e3f0",
  "kind": "theorem",
  "lexical_name": "pointOrbit_card_eq_two_iff",
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
  "slug": "pointorbit-card-eq-two-iff--ddac155af49ee34017a9d102",
  "source": {
    "blob": "915dc8a2e06bb969baede402096787c15cbda117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 133,
    "path": "GRWTSK/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddac155af49ee34017a9d102735ee007a4da85e6484aef7f5e0bcd6e1740e1a3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9894c7e9-97da-36cd-e382-4c1a1e33e3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointOrbit_card_eq_two_iff (ι : CertifiedInvolution X) (x : X) :
    (ι.pointOrbit x).card = 2 ↔ x ∈ ι.support := by
  rw [pointOrbit_card, ι.support_spec]
  by_cases h : ι.act x = x <;> simp [h]

/-- A moved point and its partner form the same two-point orbit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915dc8a2e06bb969baede402096787c15cbda117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
