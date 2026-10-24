# certified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77588712bc7abb0f5896ada0ef8dbfd4aef1784e7697b4cbfc5b006ace65a8ad",
  "kind": "def",
  "lexical_name": "certified",
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
  "slug": "certified--cd1e40b70dc51f17630487e5",
  "source": {
    "blob": "7558f20879db4308a92a7ec636b765119b3d0959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 81,
    "path": "GRWTSK/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd1e40b70dc51f17630487e599b333deac8be262d7671fdec88583addac21d9c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77588712bc7abb0f5896ada0ef8dbfd4aef1784e7697b4cbfc5b006ace65a8ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certified
    (A : Datum)
    (degree : Int)
    (scope : Comparison.Scope) :
    Comparison.Certified
      (A.EquivariantHomology degree)
      (A.GroupRingKTheory degree) :=
  Comparison.Certified.ofConditional
    (A.comparison degree)
    Comparison.CoefficientContext.integral
    Comparison.CoefficientContext.integral
    scope
    (Comparison.IsBijective (A.comparison degree))
    A.IsomorphismClaim
    (fun h ↦ h degree)

end Datum

/--
An explicit Farrell--Jones hypothesis for a particular assembly datum.

There is deliberately no global inhabitant of this structure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7558f20879db4308a92a7ec636b765119b3d0959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
