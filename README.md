# GRWTSK mathematical sources

This repository contains Lean 4 mathematics, written arguments, counterexamples,
source references, and static verification specifications. The presence of a
statement or proof script does not establish that it has been verified.

## Source and navigation

| Material | Location |
| --- | --- |
| Mathematical source | [GRWTSK/](GRWTSK/) |
| MSC2020 subject guides | [Subjects](docs/taxonomy/subjects/index.md) |
| Source/document layout | [MSC2020 layout](docs/taxonomy/msc2020/README.md) |
| Source and evidence records | [Ontology](docs/ontology/README.md) |
| Isolated upstream adapters | [Adapters](docs/adapters/README.md) |
| Technical and evidence guidance | [Reference guides](docs/guide/README.md) |
| Source-colocated agent instructions | [Directory graph](agents/README.md) |

## Evidence

A formalized statement is not a proof. A conditional theorem does not establish
its hypotheses. Finite computations support only their certified scope. Lean
checking, when performed, concerns a particular statement and dependency
revision; its correspondence to an external mathematical claim must be
justified separately. Consult the [evidence guide](docs/guide/evidence.md)
and [repository instructions](AGENTS.md).

## Contributing

The [contribution guide](CONTRIBUTING.md) explains source attribution, proof
comparison, open obligations and verification targets. Publication, compilation,
kernel checking, independent mathematical review and mathematical acceptance are
separate claims.

## Practical Lean checks (optional)

The pinned toolchain is Lean 4.34.1. With Lean and Lake configured, one example
of a targeted build is:

```sh
lake build +GRWTSK.NumberTheory.FirstPrime:olean
```

This command has not been executed for this documentation revision. It does not
imply that the full library or unrelated modules compile. See [build and
reproduction](docs/guide/build.md).

## Licensing and provenance

[LICENSE](LICENSE), [NOTICE](NOTICE), and [LICENSES/](LICENSES/) record local
and upstream rights. [CITATION.cff](CITATION.cff) is a collection citation,
not an attribution or verification record for an individual result. Cite
original authors, source declarations and exact revisions where applicable.

Local attribution: grwtsk contributors.
