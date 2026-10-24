# cast_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae0c41d7-c937-77a1-9b73-4de38028bc8f",
  "kind": "theorem",
  "lexical_name": "cast_symm_apply",
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
  "slug": "cast-symm-apply--49daea32a3beb847b2bc24e4",
  "source": {
    "blob": "5cf332f4b238b22289008f48aa07d027c1a69cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/Equiv/Variant6b91b08744a2e1ee576b51207bc6e70f816167b9bf283678afa55dbf3b3e498b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49daea32a3beb847b2bc24e4e0b269ee5a54924d139b3fffe7a43b0fb132c27b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equiv/Variant6b91b08744a2e1ee576b51207bc6e70f816167b9bf283678afa55dbf3b3e498b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae0c41d7-c937-77a1-9b73-4de38028bc8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_symm_apply {ι : Type*} {A : ι → Type*} [(i : ι) → Semiring (A i)]
    [(i : ι) → Algebra R (A i)] [(i : ι) → TopologicalSpace (A i)] {i j : ι} (h : i = j)
    (x : A j) : (cast (R := R) h).symm x = Equiv.cast (congrArg A h.symm) x := rfl

end ContinuousAlgEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equiv/Variant6b91b08744a2e1ee576b51207bc6e70f816167b9bf283678afa55dbf3b3e498b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equiv/Variant6b91b08744a2e1ee576b51207bc6e70f816167b9bf283678afa55dbf3b3e498b.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf332f4b238b22289008f48aa07d027c1a69cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
