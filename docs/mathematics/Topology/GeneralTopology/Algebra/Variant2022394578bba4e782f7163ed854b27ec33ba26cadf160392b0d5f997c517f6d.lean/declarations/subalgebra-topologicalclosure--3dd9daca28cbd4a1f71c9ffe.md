# Subalgebra.topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fa733195677b01374d25754093245bf0afab038efd091a38b4e9ffc0444ebe3",
  "kind": "def",
  "lexical_name": "Subalgebra.topologicalClosure",
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
  "slug": "subalgebra-topologicalclosure--3dd9daca28cbd4a1f71c9ffe",
  "source": {
    "blob": "8f946209e2ff0630b7511fbbef1931dd14354ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dd9daca28cbd4a1f71c9ffe66d8c3bb5cb7ed2f91a85ebb85288bdea95da982",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fa733195677b01374d25754093245bf0afab038efd091a38b4e9ffc0444ebe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subalgebra.topologicalClosure (s : Subalgebra R A) : Subalgebra R A :=
  {
    s.toSubsemiring.topologicalClosure with
    carrier := closure (s : Set A)
    algebraMap_mem' := fun r => s.toSubsemiring.le_topologicalClosure (s.algebraMap_mem r) }
#align subalgebra.topological_closure Subalgebra.topologicalClosure

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f946209e2ff0630b7511fbbef1931dd14354ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
