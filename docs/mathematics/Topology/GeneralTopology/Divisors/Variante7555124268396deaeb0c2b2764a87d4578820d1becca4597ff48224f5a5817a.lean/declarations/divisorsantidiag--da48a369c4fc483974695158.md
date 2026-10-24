# divisorsAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1191f68f3bd5f4ea3f7db477a44691af44b820cd797b1c3f6e8a526618eb263b",
  "kind": "def",
  "lexical_name": "divisorsAntidiag",
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
  "slug": "divisorsantidiag--da48a369c4fc483974695158",
  "source": {
    "blob": "ae81687d75b07a3d466a7e4a2a99f705b100627a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 610,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da48a369c4fc483974695158797bba3d720cd338be9e2ae0f70e1f7fb27de56c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1191f68f3bd5f4ea3f7db477a44691af44b820cd797b1c3f6e8a526618eb263b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divisorsAntidiag : (z : ℤ) → Finset (ℤ × ℤ)
  | (n : ℕ) =>
    let s : Finset (ℕ × ℕ) := n.divisorsAntidiagonal
    (s.map <| .prodMap natCast natCast).disjUnion (s.map <| .prodMap negNatCast negNatCast) <| by
      simp +contextual [s, disjoint_left, eq_comm]
  | negSucc n =>
    let s : Finset (ℕ × ℕ) := (n + 1).divisorsAntidiagonal
    (s.map <| .prodMap natCast negNatCast).disjUnion (s.map <| .prodMap negNatCast natCast) <| by
      simp +contextual [s, disjoint_left, eq_comm, forall_comm (α := _ * _ = _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae81687d75b07a3d466a7e4a2a99f705b100627a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
