# catalogQuine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:659d915acf07233a198c42f73a26d3f3554ba350ecd2514d347e5ebf943f0036",
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
  "slug": "catalogquine--5672b85f4016f4f7bab32fa4",
  "source": {
    "blob": "be76916bf380a7c1aebcb838f6bd42a024bddcda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5672b85f4016f4f7bab32fa431313dfeb84f8b15e57f54027c1e0a53d8f4a3e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:659d915acf07233a198c42f73a26d3f3554ba350ecd2514d347e5ebf943f0036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be76916bf380a7c1aebcb838f6bd42a024bddcda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
