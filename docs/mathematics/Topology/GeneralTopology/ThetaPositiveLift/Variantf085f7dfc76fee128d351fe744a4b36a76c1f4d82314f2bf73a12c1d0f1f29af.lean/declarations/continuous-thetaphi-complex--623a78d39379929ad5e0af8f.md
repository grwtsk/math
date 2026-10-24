# continuous_thetaPhi_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82f52f6b-5353-ec4a-4c10-64ff948d1ea5",
  "kind": "theorem",
  "lexical_name": "continuous_thetaPhi_complex",
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
  "slug": "continuous-thetaphi-complex--623a78d39379929ad5e0af8f",
  "source": {
    "blob": "de95741e9db97643230c3c0558d228aa9a97e8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:623a78d39379929ad5e0af8fb27c5eb33225a396a6008df0ed60ced9fbfd3b51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82f52f6b-5353-ec4a-4c10-64ff948d1ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem continuous_thetaPhi_complex :
    Continuous (fun t : ℝ => (thetaPhi t : ℂ)) :=
  Complex.continuous_ofReal.comp continuous_thetaPhi

/-- Exact finite-interval source identity.

The left side is already the positive `Phi` source.  The first term on the
right is the retained boundary debt; the last term is the same `A` transform
that occurs in the centered xi formula.  Passing from this theorem to the
improper cosh identity therefore requires only the even `u,-u` combination
and a separately proved vanishing of the upper boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de95741e9db97643230c3c0558d228aa9a97e8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
