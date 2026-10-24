# catalogQuine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1717a905de9a7afd95ff4f8dc1ae103ea4493cb7d02427717cef4cd7669a33d2",
  "kind": "def",
  "lexical_name": "catalogQuine",
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
  "slug": "catalogquine--a975af4a5d3c4ffabcd8e877",
  "source": {
    "blob": "8aa5ac7e30068b21dcc86256558119f782d3ed09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a975af4a5d3c4ffabcd8e8775894e924c8c69320f29e2e43fee1aeaf4a6cea10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1717a905de9a7afd95ff4f8dc1ae103ea4493cb7d02427717cef4cd7669a33d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def catalogQuine : StructuralQuine.{u, v, w, a, b} catalogFamily where
  quotient := catalogRepresentation
  reconstruct := fun r => ⟨if r.down then ⟨1, by decide⟩ else ⟨0, by decide⟩⟩
  «section» := by
    rintro ⟨r⟩
    cases r <;> rfl
  reconstruct_equivalent := by
    intro s i
    rcases s with ⟨s⟩
    fin_cases s <;> rfl
  minimal := catalogRepresentation_minimal

/-- Distinct catalog source terms have the same readout and compression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant02c2a8b5f2339873e576487624f9e347841f6b1597408c93d05e7633be6d4afd.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa5ac7e30068b21dcc86256558119f782d3ed09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
