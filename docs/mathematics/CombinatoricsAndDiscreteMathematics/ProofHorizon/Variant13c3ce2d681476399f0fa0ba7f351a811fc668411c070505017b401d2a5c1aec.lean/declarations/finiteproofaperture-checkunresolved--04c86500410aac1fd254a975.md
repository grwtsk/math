# FiniteProofAperture.checkUnresolved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75b5739cc0ee5378a86fb0901a3da7ab8ea9cb270cc151fa1268c0e703271fb2",
  "kind": "def",
  "lexical_name": "FiniteProofAperture.checkUnresolved",
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
  "slug": "finiteproofaperture-checkunresolved--04c86500410aac1fd254a975",
  "source": {
    "blob": "30059abc680bdfaef334b63402068646638a9507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04c86500410aac1fd254a97548fc1027012fdddd362a63651b5a9c5854b91818",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75b5739cc0ee5378a86fb0901a3da7ab8ea9cb270cc151fa1268c0e703271fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteProofAperture.checkUnresolved {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) : Bool :=
  decide ((¬∃ certificate ∈ aperture.certificates,
    aperture.accepts .positive certificate = true) ∧
    (¬∃ certificate ∈ aperture.certificates, aperture.accepts .negative certificate = true))

/-- Exact reflection of finite unresolvedness; it does not reflect object-level truth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30059abc680bdfaef334b63402068646638a9507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
