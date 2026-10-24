# incoming_connecting_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40bc1156-6f9e-1bed-3cdf-2b12e7f4d742",
  "kind": "theorem",
  "lexical_name": "incoming_connecting_sign",
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
  "slug": "incoming-connecting-sign--56a233a50652e4019bc72b42",
  "source": {
    "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 811,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56a233a50652e4019bc72b42d20227f302f03279c3e629da8dadf4b0ca21a21d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40bc1156-6f9e-1bed-3cdf-2b12e7f4d742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incoming_connecting_sign
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.theory.connectingSign certificate.trace .incoming (p + 1) =
        .outwardNormalFirst ∧
      H.incomingDegreeLinearEquiv H.incomingGenerator = 1 ∧
        H.theory.connecting certificate.trace .incoming (p + 1)
            (Nat.zero_lt_succ p)
            H.incomingGenerator =
          H.incomingBoundaryTargetCompare.symm
            certificate.incomingRelative.attachingClass := by
  letI := H.incomingAddCommGroup (p + 1)
  letI := H.incomingModule (p + 1)
  letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
  letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
  letI := certificate.incomingRelative.boundaryTargetAddCommGroup
  refine ⟨rfl, ?_, H.incomingConnectingGenerator_eq_attachingRepresentative⟩
  simp [incomingDegreeLinearEquiv, incomingGenerator]

/--
The outgoing sign theorem is tied to the normalized generator's actual belt
representative, not merely to an orientation tag.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
